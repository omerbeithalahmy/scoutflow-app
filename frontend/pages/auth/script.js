/*
============================================================================
Authentication Module - Logical Controllers
Orchestrates secure user sessions, credential validation, and UI transitions
============================================================================
*/

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

const slider = document.querySelector('.auth-slider');
if (slider) {
  document.querySelectorAll('.switch').forEach(btn => {
    btn.addEventListener('click', () => {
      btn.dataset.target === 'signup' ? slider.classList.add('show-signup') : slider.classList.remove('show-signup');
    });
  });
}

document.querySelectorAll('.toggle-password').forEach(icon => {
  icon.addEventListener('click', () => {
    const input = icon.previousElementSibling;
    input.type = input.type === 'password' ? 'text' : 'password';
    icon.classList.toggle('fa-eye');
    icon.classList.toggle('fa-eye-slash');
  });
});

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
      localStorage.setItem('userName', data.username);
      localStorage.setItem('userId', data.id);
      localStorage.setItem('userEmail', data.email);
      showToast(`Welcome back, ${data.username}!`);
      setTimeout(() => {
        window.location.href = '../homepage/index.html';
      }, 1000);
    } catch (err) {
      showToast(err.message, "error");
    }
  });
}

const signupForm = document.getElementById('nbaSignupForm');
if (signupForm) {
  signupForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const inputs = signupForm.querySelectorAll('input');
    const username = inputs[0].value.trim();
    const email = inputs[1].value.trim();
    const password = inputs[2].value.trim();
    if (!validateAuthData(username, email, password)) return;
    try {
      const res = await fetch('http://localhost:8000/users/', {
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
      setTimeout(() => {
        if (slider) slider.classList.remove('show-signup');
      }, 1500);
    } catch (err) {
      console.error("Signup Error:", err);
      showToast(err.message, "error");
    }
  });
}

function initUserDisplay() {
  const userNameDisplay = document.getElementById('userNameDisplay');
  const logoutBtn = document.querySelector('.logout-btn');
  const storedName = localStorage.getItem('userName');
  if (storedName && userNameDisplay) {
    userNameDisplay.textContent = storedName.toUpperCase();
  }
  if (logoutBtn) {
    logoutBtn.onclick = () => {
      localStorage.clear();
      window.location.href = '../auth/index.html';
    };
  }
}

document.addEventListener('DOMContentLoaded', initUserDisplay);