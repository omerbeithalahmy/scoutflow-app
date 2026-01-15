console.log("auth script loaded");

/* ================================
   AUTH SLIDER
================================ */
const slider = document.querySelector('.auth-slider');

document.querySelectorAll('.switch').forEach(btn => {
  btn.addEventListener('click', () => {
    if (btn.dataset.target === 'signup') {
      slider.classList.add('show-signup');
    } else {
      slider.classList.remove('show-signup');
    }
  });
});

/* ================================
   PASSWORD TOGGLE (FIXED)
================================ */
document.querySelectorAll('.toggle-password').forEach(icon => {
  icon.addEventListener('click', () => {
    const input = icon.previousElementSibling;
    const isPassword = input.type === 'password';

    input.type = isPassword ? 'text' : 'password';
    icon.classList.toggle('fa-eye');
    icon.classList.toggle('fa-eye-slash');
  });
});

/* ================================
   LOGIN
================================ */
const loginForm = document.getElementById('nbaLoginForm');

loginForm.addEventListener('submit', async (e) => {
  e.preventDefault();

  const email = loginForm.querySelector('input[type="email"]').value.trim();
  const password = loginForm.querySelector('input[type="password"]').value.trim();

  console.log("LOGIN:", email, password);

  try {
    const res = await fetch('http://localhost:8000/users/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        username: email,
        password: password
      })
    });

    if (!res.ok) {
      const text = await res.text();
      throw new Error(text);
    }

    const user = await res.json();
    console.log("SUCCESS:", user);

    window.location.href = '../homepage/index.html';

  } catch (err) {
    console.error(err);
    alert('Login failed');
  }
});

/* ================================
   SIGNUP
================================ */
const signupForm = document.getElementById('nbaSignupForm');

signupForm.addEventListener('submit', async (e) => {
  e.preventDefault();

  const inputs = signupForm.querySelectorAll('input');

  const username = inputs[0].value.trim();
  const email = inputs[1].value.trim();
  const password = inputs[2].value.trim();

  console.log("SIGNUP:", username, email);

  try {
    const res = await fetch('http://localhost:8000/users/', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username, email, password })
    });

    if (!res.ok) {
      const text = await res.text();
      throw new Error(text);
    }

    alert("Account created – please sign in");
    slider.classList.remove('show-signup');

  } catch (err) {
    console.error(err);
    alert("Signup failed");
  }
});
