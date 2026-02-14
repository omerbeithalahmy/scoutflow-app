// --- 1. UI & Animation Logic (The "Slider" Effect) ---
const loginSection = document.getElementById('loginSection');
const registerSection = document.getElementById('registerSection');
const toRegisterBtn = document.getElementById('toRegister');
const toLoginBtn = document.getElementById('toLogin');


toRegisterBtn.addEventListener('click', (e) => {
  e.preventDefault();
  loginSection.classList.remove('translate-x-0', 'opacity-100', 'z-10');
  loginSection.classList.add('-translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');

  registerSection.classList.remove('translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');
  registerSection.classList.add('translate-x-0', 'opacity-100', 'z-10');
});


toLoginBtn.addEventListener('click', (e) => {
  e.preventDefault();
  registerSection.classList.remove('translate-x-0', 'opacity-100', 'z-10');
  registerSection.classList.add('translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');

  loginSection.classList.remove('-translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');
  loginSection.classList.add('translate-x-0', 'opacity-100', 'z-10');
});

// --- 2. Toast System (Tailwind Style) ---
function showToast(message, type = 'success') {
  const container = document.getElementById('toast-container');
  if (!container) return;
  const toast = document.createElement('div');


  const typeClass = type === 'error' ? "bg-red-500 border-red-600" : "bg-emerald-500 border-emerald-600";
  toast.className = `flex items-center gap-3 px-6 py-4 rounded-lg shadow-xl border text-white transform transition-all duration-300 translate-y-2 opacity-0 min-w-[300px] z-50 ${typeClass}`;

  toast.innerHTML = `
    <span class="material-symbols-outlined">${type === 'error' ? 'error' : 'check_circle'}</span>
    <span class="font-medium text-sm">${message}</span>
  `;

  container.appendChild(toast);

  requestAnimationFrame(() => toast.classList.remove('translate-y-2', 'opacity-0'));

  setTimeout(() => {
    toast.classList.add('translate-y-2', 'opacity-0');
    setTimeout(() => toast.remove(), 300);
  }, 4000);
}

// --- 3. Validation Logic (From your original Backend Code) ---
function validateAuthData(name, email, pass) {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
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

// --- 4. Login Handling (Connected to FastAPI) ---
const loginForm = document.getElementById('loginForm');
if (loginForm) {
  loginForm.addEventListener('submit', async (e) => {
    e.preventDefault();


    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value.trim();


    const submitBtn = loginForm.querySelector('button[type="submit"]');
    const originalContent = submitBtn.innerHTML;


    if (!validateAuthData(null, email, null)) return;

    submitBtn.disabled = true;
    submitBtn.innerHTML = `<span class="material-symbols-outlined animate-spin">progress_activity</span>`;

    try {
      const res = await fetch('/api/users/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username: email, password: password })
      });

      const data = await res.json();
      if (!res.ok) throw new Error(data.detail || 'Invalid credentials');

      localStorage.setItem('userName', data.username);
      localStorage.setItem('userId', data.id);
      localStorage.setItem('userEmail', data.email);

      showToast(`Welcome back, ${data.username}!`);


      setTimeout(() => window.location.href = '../homepage/index.html', 1000);

    } catch (err) {
      showToast(err.message, "error");
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalContent;
    }
  });
}

// --- 5. Signup Handling (Connected to FastAPI) ---
const registerForm = document.getElementById('registerForm');
if (registerForm) {
  registerForm.addEventListener('submit', async (e) => {
    e.preventDefault();


    const username = document.getElementById('regName').value.trim();
    const email = document.getElementById('regEmail').value.trim();
    const password = document.getElementById('regPassword').value.trim();

    const submitBtn = registerForm.querySelector('button[type="submit"]');
    const originalContent = submitBtn.innerHTML;


    if (!validateAuthData(username, email, password)) return;

    submitBtn.disabled = true;
    submitBtn.innerHTML = `<span class="material-symbols-outlined animate-spin">progress_activity</span>`;

    try {
      const res = await fetch('/api/users/', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, email, password })
      });

      const data = await res.json();

      if (!res.ok) {
        let errorMsg = "Signup failed";
        if (data.detail && Array.isArray(data.detail)) {
          errorMsg = data.detail[0].msg.replace("Value error, ", "");
        } else if (data.detail) {
          errorMsg = data.detail;
        }
        throw new Error(errorMsg);
      }

      showToast("Account created! Now you can sign in.");


      submitBtn.disabled = false;
      submitBtn.innerHTML = originalContent;


      setTimeout(() => {
        toLoginBtn.click();
      }, 1500);

    } catch (err) {
      console.error("Signup Error:", err);
      showToast(err.message, "error");
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalContent;
    }
  });
}

// --- 6. Password Toggles ---

// Login Toggle
const toggleLogin = document.getElementById('togglePassword');
const passLogin = document.getElementById('password');
if (toggleLogin && passLogin) {
  toggleLogin.addEventListener('click', () => {
    const type = passLogin.type === 'password' ? 'text' : 'password';
    passLogin.type = type;
    toggleLogin.querySelector('span').textContent = type === 'password' ? 'visibility' : 'visibility_off';
  });
}

// Register Toggle
const toggleReg = document.getElementById('toggleRegPassword');
const passReg = document.getElementById('regPassword');
if (toggleReg && passReg) {
  toggleReg.addEventListener('click', () => {
    const type = passReg.type === 'password' ? 'text' : 'password';
    passReg.type = type;
    toggleReg.querySelector('span').textContent = type === 'password' ? 'visibility' : 'visibility_off';
  });
}