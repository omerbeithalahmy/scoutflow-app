const loginForm = document.getElementById('nbaLoginForm');
const togglePassword = document.querySelector('.toggle-password');
const passwordField = loginForm.querySelector('input[type="password"]');

// 🔹 Toggle password visibility
togglePassword.addEventListener('click', function () {
    const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordField.setAttribute('type', type);
    this.classList.toggle('fa-eye');
    this.classList.toggle('fa-eye-slash');
});

// 🔹 Handle Login Submission
loginForm.addEventListener('submit', async (e) => {
    e.preventDefault();

    const email = loginForm.querySelector('input[type="email"]').value.trim();
    const password = passwordField.value.trim();

    console.log("Trying to log in with:", email, password); // בדיקה בקונסול

    try {
        const response = await fetch("http://localhost:8000/users/login", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ username: email, password }), // backend מצפה ל־username או email
        });

        if (!response.ok) {
            // קבל JSON עם ההודעה מה-backend
            const errData = await response.json().catch(() => ({}));
            throw new Error(errData.detail || "Login failed");
        }

        const user = await response.json();
        console.log("Logged in user:", user);
        alert(`Welcome back, ${user.username}!`);

        // הפניה לעמוד הבית
        window.location.href = "../home/index.html";

    } catch (error) {
        console.error(error);
        alert(`Error: ${error.message}`);
    }
});
