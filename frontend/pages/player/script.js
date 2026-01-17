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
    document.getElementById('firstName').innerText = firstName;
    document.getElementById('lastName').innerText = lastName;
    document.getElementById('playerInitials').innerText = initials;
    document.getElementById('playerSubTitle').innerText = `${p.team_name.toUpperCase()} | NBA PLAYER`;
    
    // כפתור חזרה דינמי
    const backBtn = document.querySelector('.back-link');
    backBtn.innerHTML = `<i class="fa-solid fa-arrow-left"></i> BACK TO ${p.team_name.toUpperCase()}`;
    backBtn.href = `../teams/index.html?id=${p.team_id}`;

    // 4. סטטיסטיקות (לוקחים את העונה האחרונה מהמערך)
    if (p.season_stats && p.season_stats.length > 0) {
        const s = p.season_stats[0]; // העונה הכי עדכנית (בגלל ה-order_by ב-Backend)
        
        const format = (v) => v !== undefined && v !== null ? v.toFixed(1) : "0.0";

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

initPlayerPage();