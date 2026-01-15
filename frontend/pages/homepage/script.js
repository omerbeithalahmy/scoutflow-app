// פונקציה להחלפת טאבים
document.querySelectorAll('.filter-tab').forEach(tab => {
    tab.addEventListener('click', () => {
        document.querySelector('.filter-tab.active').classList.remove('active');
        tab.classList.add('active');
        
        const filter = tab.dataset.filter;
        // כאן תוסיף לוגיקה לסינון הקבוצות ב-Grid
    });
});

// חיפוש חופשי
document.getElementById('teamSearch').addEventListener('input', (e) => {
    const term = e.target.value.toLowerCase();
    const cards = document.querySelectorAll('.team-card');
    
    cards.forEach(card => {
        const name = card.querySelector('.team-name').innerText.toLowerCase();
        card.style.display = name.includes(term) ? 'flex' : 'none';
    });
});