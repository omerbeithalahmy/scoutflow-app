/* ================================
   TOAST NOTIFICATION SYSTEM
================================ */
function showToast(message, type = 'success') {
    const container = document.getElementById('toast-container');
    if (!container) return;

    const toast = document.createElement('div');
    toast.className = `toast ${type === 'error' ? 'error' : ''}`;
    const icon = type === 'success' ? 'fa-circle-check' : 'fa-circle-exclamation';
    
    toast.innerHTML = `<i class="fa-solid ${icon}"></i><span>${message}</span>`;
    container.appendChild(toast);

    setTimeout(() => toast.classList.add('show'), 10);
    setTimeout(() => {
        toast.classList.remove('show');
        setTimeout(() => toast.remove(), 400);
    }, 4000);
}

/* ================================
   VALIDATION LOGIC
================================ */
function validateAuthData(name, email, pass) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    // לפחות אות גדולה, מספר, תו מיוחד ומינימום 8 תווים
    const passRegex = /^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$/;

    if (name !== null && name.trim().split(/\s+/).length < 2) {
        showToast("Enter full name (First & Last)", "error");
        return false;
    }
    if (!emailRegex.test(email)) {
        showToast("Invalid email format", "error");
        return false;
    }
    if (pass !== null && !passRegex.test(pass)) {
        showToast("Password too weak (Need Uppercase, Number & Symbol)", "error");
        return false;
    }
    return true;
}

/* ================================
   AUTH SLIDER & TOGGLE
================================ */
const slider = document.querySelector('.auth-slider');
document.querySelectorAll('.switch').forEach(btn => {
  btn.addEventListener('click', () => {
    btn.dataset.target === 'signup' ? slider.classList.add('show-signup') : slider.classList.remove('show-signup');
  });
});

document.querySelectorAll('.toggle-password').forEach(icon => {
  icon.addEventListener('click', () => {
    const input = icon.previousElementSibling;
    input.type = input.type === 'password' ? 'text' : 'password';
    icon.classList.toggle('fa-eye');
    icon.classList.toggle('fa-eye-slash');
  });
});

/* ================================
   LOGIN
================================ */
const loginForm = document.getElementById('nbaLoginForm');
if (loginForm) {
  loginForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const email = loginForm.querySelector('input[type="email"]').value.trim();
    const password = loginForm.querySelector('input[type="password"]').value.trim();

    if (!validateAuthData(null, email, null)) return;

    try {
      const res = await fetch('http://localhost:8000/users/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username: email, password: password })
      });

      const data = await res.json();
      if (!res.ok) throw new Error(data.detail || 'Invalid credentials');

      const displayName = data.username || "Scouter";
      showToast(`Welcome back, ${displayName}!`);
      
      localStorage.setItem('userName', displayName);
      localStorage.setItem('userId', data.id);

      setTimeout(() => { window.location.href = '../homepage/index.html'; }, 1000);
    } catch (err) {
      showToast(err.message, "error");
    }
  });
}

/* ================================
   SIGNUP (זה מה שהיה חסר!)
================================ */
const signupForm = document.getElementById('nbaSignupForm');
if (signupForm) {
  signupForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const inputs = signupForm.querySelectorAll('input');
    const username = inputs[0].value.trim(); // Full Name
    const email = inputs[1].value.trim();
    const password = inputs[2].value.trim();

    // בדיקת תקינות לפני שליחה
    if (!validateAuthData(username, email, password)) return;

    try {
      const res = await fetch('http://localhost:8000/users/', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, email, password })
      });

      const data = await res.json();

      if (!res.ok) {
        // ניקוי הודעת השגיאה מ-Pydantic (מסיר את ה-"Value error, ")
        let errorMsg = "Signup failed";
        if (data.detail && Array.isArray(data.detail)) {
            errorMsg = data.detail[0].msg.replace("Value error, ", "");
        } else if (data.detail) {
            errorMsg = data.detail;
        }
        throw new Error(errorMsg);
      }

      showToast("Account created! Now you can sign in.");
      
      // החלקה חזרה לטופס לוגין
      setTimeout(() => { slider.classList.remove('show-signup'); }, 1500);

    } catch (err) {
      console.error("Signup Error:", err);
      showToast(err.message, "error");
    }
  });
}