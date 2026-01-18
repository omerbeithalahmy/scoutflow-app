/* ================================
   NBA PLAYER DETAILS - script.js
================================ */

const teamExtraData = {
    "ATL": { color: "#E03A3E" }, "BOS": { color: "#007A33" }, "CLE": { color: "#860038" },
    "NOP": { color: "#0C2340" }, "CHI": { color: "#CE1141" }, "DAL": { color: "#00538C" },
    "DEN": { color: "#0E2240" }, "GSW": { color: "#1D428A" }, "HOU": { color: "#CE1141" },
    "LAC": { color: "#C8102E" }, "LAL": { color: "#552583" }, "BKN": { color: "#000000" },
    "NYK": { color: "#006BB6" }, "PHI": { color: "#006BB6" }, "PHX": { color: "#1D1160" },
    "POR": { color: "#E03A3E" }, "SAC": { color: "#5A2D81" }, "SAS": { color: "#C4CED4" },
    "OKC": { color: "#007AC1" }, "UTA": { color: "#002B5C" }, "MEM": { color: "#5D76A9" },
    "DET": { color: "#1D42BA" }, "CHA": { color: "#00788C" }, "MIL": { color: "#00471B" },
    "IND": { color: "#FDBB30" }, "MIA": { color: "#98002E" }, "ORL": { color: "#0077C0" },
    "TOR": { color: "#CE1141" }, "MIN": { color: "#0C2340" }, "WAS": { color: "#002B5C" }
};

async function initPlayerPage() {
    // 1. אתחול שם המשתמש ב-Navbar מיד עם טעינת הדף
    initUserDisplay();

    const urlParams = new URLSearchParams(window.location.search);
    const playerId = urlParams.get('id');

    if (!playerId) {
        window.location.href = '../teams/index.html';
        return;
    }

    try {
        const res = await fetch(`http://localhost:8000/players/${playerId}`);
        if (!res.ok) throw new Error("Player not found");
        const player = await res.json();

        renderPlayerPage(player);
    } catch (err) {
        console.error(err);
        document.body.innerHTML = "<h1 style='color:white; text-align:center; padding-top:50px;'>Player Not Found</h1>";
    }
}

function renderPlayerPage(p) {
    // 1. צבע קבוצה ועיצוב דינמי
    const extra = teamExtraData[p.team_abbreviation] || { color: "#111" };
    document.documentElement.style.setProperty('--team-color', extra.color);

    // 2. טיפול בשמות (פיצול שם פרטי ומשפחה)
    const nameParts = p.full_name.trim().split(/\s+/);
    const firstName = nameParts[0].toUpperCase();
    const lastName = nameParts.slice(1).join(" ").toUpperCase();
    const initials = (firstName[0] + (lastName[0] || "")).toUpperCase();

    // 3. עדכון טקסטים ב-Header
    if (document.getElementById('firstName')) document.getElementById('firstName').innerText = firstName;
    if (document.getElementById('lastName')) document.getElementById('lastName').innerText = lastName;
    if (document.getElementById('playerInitials')) document.getElementById('playerInitials').innerText = initials;
    if (document.getElementById('playerSubTitle')) {
        document.getElementById('playerSubTitle').innerText = `${p.team_name.toUpperCase()} | NBA PLAYER`;
    }
    
    // כפתור חזרה דינמי
    const backBtn = document.querySelector('.back-link');
    if (backBtn) {
        backBtn.innerHTML = `<i class="fa-solid fa-arrow-left"></i> BACK TO ${p.team_name.toUpperCase()}`;
        backBtn.href = `../teams/index.html?id=${p.team_id}`;
    }

    // 4. סטטיסטיקות
    if (p.season_stats && p.season_stats.length > 0) {
        const s = p.season_stats[0]; 
        const format = (v) => (v !== undefined && v !== null) ? v.toFixed(1) : "0.0";

        if (document.getElementById('gamesPlayed')) document.getElementById('gamesPlayed').innerText = `(${s.games_played || 0} GP)`;
        if (document.getElementById('val-ppg')) document.getElementById('val-ppg').innerText = format(s.avg_points);
        if (document.getElementById('val-rpg')) document.getElementById('val-rpg').innerText = format(s.avg_rebounds);
        if (document.getElementById('val-apg')) document.getElementById('val-apg').innerText = format(s.avg_assists);
        if (document.getElementById('val-spg')) document.getElementById('val-spg').innerText = format(s.avg_steals);
        if (document.getElementById('val-bpg')) document.getElementById('val-bpg').innerText = format(s.avg_blocks);
        if (document.getElementById('val-tov')) document.getElementById('val-tov').innerText = format(s.avg_turnovers);
        if (document.getElementById('val-mpg')) document.getElementById('val-mpg').innerText = format(s.avg_minutes);
    }
}

/* ================================
   לוגיקת תצוגת משתמש (Auth Display)
================================ */
function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const logoutBtn = document.querySelector('.logout-btn');
    
    // שליפת השם המלא מה-LocalStorage
    const storedName = localStorage.getItem('userName');

    if (storedName && userNameDisplay) {
        userNameDisplay.textContent = storedName.toUpperCase();
    } else if (userNameDisplay) {
        userNameDisplay.textContent = "GUEST";
    }

    // הגדרת כפתור היציאה
    if (logoutBtn) {
        logoutBtn.onclick = (e) => {
            e.preventDefault(); // מונע התנהגות לינק רגילה
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

// הפעלה בטעינת הדף
document.addEventListener('DOMContentLoaded', initPlayerPage);