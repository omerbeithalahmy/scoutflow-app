// Handle Signup Submission
const signupForm = document.getElementById('nbaSignupForm');

signupForm.addEventListener('submit', async (e) => {
    e.preventDefault();

    const fullName = signupForm.querySelector('input[type="text"]').value;
    const email = signupForm.querySelector('input[type="email"]').value;
    const password = signupForm.querySelector('input[type="password"]').value;

    try {
        const response = await fetch("http://localhost:8000/users/", { // כתובת הבאקאנד שלך
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                username: fullName,  // ב־backend אתה מצפה ל־username
                email,
                password
            }),
        });

        if (!response.ok) {
            const errData = await response.json();
            throw new Error(errData.detail || "Signup failed");
        }

        const user = await response.json();
        console.log("New Scout Registration:", user);
        alert(`Account created successfully for ${user.username}!`);
        // הפניה לעמוד לוגין אחרי יצירת משתמש
        window.location.href = "../login/index.html";

    } catch (error) {
        console.error(error);
        alert(`Error: ${error.message}`);
    }
});
