const teamExtraData = {
    "ATL": { nbaId: 1610612737, color: "#E03A3E" },
    "BOS": { nbaId: 1610612738, color: "#007A33" },
    "CLE": { nbaId: 1610612739, color: "#860038" },
    "NOP": { nbaId: 1610612740, color: "#0C2340" },
    "CHI": { nbaId: 1610612741, color: "#CE1141" },
    "DAL": { nbaId: 1610612742, color: "#00538C" },
    "DEN": { nbaId: 1610612743, color: "#0E2240" },
    "GSW": { nbaId: 1610612744, color: "#1D428A" },
    "HOU": { nbaId: 1610612745, color: "#CE1141" },
    "LAC": { nbaId: 1610612746, color: "#C8102E" },
    "LAL": { nbaId: 1610612747, color: "#552583" },
    "BKN": { nbaId: 1610612751, color: "#000000" },
    "NYK": { nbaId: 1610612752, color: "#006BB6" },
    "PHI": { nbaId: 1610612755, color: "#006BB6" },
    "PHX": { nbaId: 1610612756, color: "#1D1160" },
    "POR": { nbaId: 1610612757, color: "#E03A3E" },
    "SAC": { nbaId: 1610612758, color: "#5A2D81" },
    "SAS": { nbaId: 1610612759, color: "#C4CED4" },
    "OKC": { nbaId: 1610612760, color: "#007AC1" },
    "UTA": { nbaId: 1610612762, color: "#002B5C" },
    "MEM": { nbaId: 1610612763, color: "#5D76A9" },
    "DET": { nbaId: 1610612765, color: "#1D42BA" },
    "CHA": { nbaId: 1610612766, color: "#00788C" },
    "MIL": { nbaId: 1610612749, color: "#00471B" },
    "IND": { nbaId: 1610612754, color: "#FDBB30" },
    "MIA": { nbaId: 1610612748, color: "#98002E" },
    "ORL": { nbaId: 1610612753, color: "#0077C0" },
    "TOR": { nbaId: 1610612761, color: "#CE1141" },
    "MIN": { nbaId: 1610612750, color: "#0C2340" },
    "WAS": { nbaId: 1610612764, color: "#002B5C" }
};

async function initPlayerPage() {
    initUserDisplay();
    const urlParams = new URLSearchParams(window.location.search);
    const playerId = urlParams.get('id');

    if (!playerId) {
        window.location.href = '../homepage/index.html';
        return;
    }

    try {
        const res = await fetch(`http://localhost:8000/players/${playerId}`);
        if (!res.ok) throw new Error("Player not found");
        const player = await res.json();
        renderPlayerPage(player);
    } catch (err) {
        console.error(err);
        document.body.innerHTML = "<h1 style='color:black; text-align:center; padding-top:50px;'>Player Not Found</h1>";
    }
}

function renderPlayerPage(p) {
    // שליפת הנתונים לפי קיצור הקבוצה (למשל "LAL")
    const extra = teamExtraData[p.team_abbreviation] || { nbaId: 0, color: "#111" };
    document.documentElement.style.setProperty('--team-color', extra.color);

    // טיפול בשם
    const nameParts = p.full_name.trim().split(/\s+/);
    const firstName = nameParts[0].toUpperCase();
    const lastName = nameParts.slice(1).join(" ").toUpperCase();

    document.getElementById('firstName').innerText = firstName;
    document.getElementById('lastName').innerText = lastName;
    
    // עדכון לוגו הקבוצה לפי ה-nbaId (כמו בעמוד קבוצה)
    const logoImg = document.getElementById('playerTeamLogo');
    if (logoImg && extra.nbaId !== 0) {
        logoImg.src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
        logoImg.style.display = 'block';
    }

    document.getElementById('playerSubTitle').innerText = `${p.team_name.toUpperCase()} | NBA PLAYER`;
    
    const backBtn = document.querySelector('.back-link');
    if (backBtn) {
        backBtn.innerHTML = `<i class="fa-solid fa-arrow-left"></i> BACK TO ${p.team_name.toUpperCase()}`;
        backBtn.href = `../teams/index.html?id=${p.team_id}`;
    }

    // סטטיסטיקות
    if (p.season_stats && p.season_stats.length > 0) {
        const s = p.season_stats[0]; 
        const format = (v) => (v !== undefined && v !== null) ? v.toFixed(1) : "0.0";

        document.getElementById('gamesPlayed').innerText = `(${s.games_played || 0} GP)`;
        document.getElementById('val-ppg').innerText = format(s.avg_points);
        document.getElementById('val-rpg').innerText = format(s.avg_rebounds);
        document.getElementById('val-apg').innerText = format(s.avg_assists);
        document.getElementById('val-spg').innerText = format(s.avg_steals);
        document.getElementById('val-bpg').innerText = format(s.avg_blocks);
        document.getElementById('val-tov').innerText = format(s.avg_turnovers);
        document.getElementById('val-mpg').innerText = format(s.avg_minutes);
    }
}

function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const storedName = localStorage.getItem('userName');
    if (storedName && userNameDisplay) userNameDisplay.textContent = storedName.toUpperCase();
    
    const logoutBtn = document.querySelector('.logout-btn');
    if (logoutBtn) {
        logoutBtn.onclick = () => {
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

document.addEventListener('DOMContentLoaded', initPlayerPage);