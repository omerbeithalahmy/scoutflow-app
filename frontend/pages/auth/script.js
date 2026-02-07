// Toast Notification System
function showToast(message, type = 'success') {
  const container = document.getElementById('toast-container');
  if (!container) return;

  const toast = document.createElement('div');
  // Tailwind classes for toast
  const baseClasses = "flex items-center gap-3 px-6 py-4 rounded-lg shadow-xl transform transition-all duration-300 translate-y-2 opacity-0 min-w-[300px] z-50";
  const typeClasses = type === 'error'
    ? "bg-red-500/95 text-white border border-red-600 backdrop-blur-sm"
    : "bg-emerald-500/95 text-white border border-emerald-600 backdrop-blur-sm";

  toast.className = `${baseClasses} ${typeClasses}`;

  const iconName = type === 'error' ? 'error' : 'check_circle';
  toast.innerHTML = `
    <span class="material-symbols-outlined text-xl">${iconName}</span>
    <span class="font-medium text-sm">${message}</span>
  `;

  container.appendChild(toast);

  // Animate in
  requestAnimationFrame(() => {
    toast.classList.remove('translate-y-2', 'opacity-0');
  });

  // Remove after delay
  setTimeout(() => {
    toast.classList.add('translate-y-2', 'opacity-0');
    setTimeout(() => toast.remove(), 300);
  }, 4000);
}

// Validation
function validateAuthData(email, pass) {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    showToast("Invalid email format", "error");
    return false;
  }
  if (pass !== null && pass.length < 1) {
    showToast("Password is required", "error");
    return false;
  }
  return true;
}

// Toggle Password Visibility
const togglePasswordBtn = document.getElementById('togglePassword');
const passwordInput = document.getElementById('password');
if (togglePasswordBtn && passwordInput) {
  togglePasswordBtn.addEventListener('click', () => {
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordInput.setAttribute('type', type);
    togglePasswordBtn.querySelector('span').textContent = type === 'password' ? 'visibility' : 'visibility_off';
  });
}

// Login Form Handling
const loginForm = document.getElementById('loginForm');
if (loginForm) {
  loginForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value.trim();

    if (!validateAuthData(email, password)) return;

    // Show loading state
    const submitBtn = loginForm.querySelector('button[type="submit"]');
    const originalBtnContent = submitBtn.innerHTML;
    submitBtn.disabled = true;
    submitBtn.innerHTML = `<span class="material-symbols-outlined animate-spin">progress_activity</span> Signing In...`;

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

      // Enhanced success feedback
      submitBtn.innerHTML = `<span class="material-symbols-outlined">check</span> Success!`;
      submitBtn.classList.remove('bg-primary', 'hover:bg-primary/90');
      submitBtn.classList.add('bg-emerald-500');

      showToast(`Welcome back, ${data.username}!`);

      setTimeout(() => {
        window.location.href = '../homepage/index.html';
      }, 1000);

    } catch (err) {
      showToast(err.message, "error");
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalBtnContent;
    }
  });
}

// Forgot Password Placeholder
const forgotPwLink = document.getElementById('forgotPassword');
if (forgotPwLink) {
  forgotPwLink.addEventListener('click', (e) => {
    e.preventDefault();
    showToast("Password reset functionality is disabled for security.", "error");
  });
}

// Request Access Placeholder
const requestAccessLink = document.getElementById('requestAccess');
if (requestAccessLink) {
  requestAccessLink.addEventListener('click', (e) => {
    e.preventDefault();
    showToast("Analyst access requires an invite code. Please contact admin.", "error");
  });
}

// Redirect if already logged in (optional check)
document.addEventListener('DOMContentLoaded', () => {
  const userId = localStorage.getItem('userId');
  if (userId) {
    // Optional: Auto-redirect if session exists? 
    // For now, let's just log it or allow re-login.
    // console.log("User already logged in");
  }
});