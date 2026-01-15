/* ---------- SLIDER ---------- */
const slider = document.querySelector('.auth-slider');

document.querySelectorAll('.switch').forEach(el => {
  el.addEventListener('click', () => {
    if (el.dataset.target === 'signup') {
      slider.classList.add('show-signup');
    } else {
      slider.classList.remove('show-signup');
    }
  });
});

/* ---------- PASSWORD TOGGLE ---------- */
document.querySelectorAll('.toggle-password').forEach(icon => {
  icon.addEventListener('click', () => {
    const input = icon.previousElementSibling;
    input.type = input.type === 'password' ? 'text' : 'password';
    icon.classList.toggle('fa-eye');
    icon.classList.toggle('fa-eye-slash');
  });
});

/* ---------- LOGIN ---------- */
const loginForm = document.getElementById('nbaLoginForm');

loginForm.addEventListener('submit', async e => {
  e.preventDefault();

  const email = loginForm.querySelector('input[type="email"]').value;
  const password = loginForm.querySelector('input[type="password"]').value;

  try {
    const res = await fetch('http://localhost:8000/users/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username: email, password })
    });

    if (!res.ok) throw new Error('Login failed');

    const user = await res.json();
    alert(`Welcome back, ${user.username}!`);
    window.location.href = '../home/index.html';

  } catch (err) {
    alert(err.message);
  }
});

/* ---------- SIGNUP ---------- */
const signupForm = document.getElementById('nbaSignupForm');

signupForm.addEventListener('submit', async e => {
  e.preventDefault();

  const username = signupForm.querySelector('input[type="text"]').value;
  const email = signupForm.querySelector('input[type="email"]').value;
  const password = signupForm.querySelector('input[type="password"]').value;

  try {
    const res = await fetch('http://localhost:8000/users/', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username, email, password })
    });

    if (!res.ok) throw new Error('Signup failed');

    alert('Account created! Please sign in.');
    slider.classList.remove('show-signup');

  } catch (err) {
    alert(err.message);
  }
});
