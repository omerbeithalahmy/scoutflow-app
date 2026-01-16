// 1. נתונים משלימים (לוגואים וצבעים) - בדיוק כמו בעמוד הבית
const teamExtraData = {
    "ATL": { conf: "EAST", div: "Southeast", nbaId: 1610612737, color: "#E03A3E" },
    "BOS": { conf: "EAST", div: "Atlantic", nbaId: 1610612738, color: "#007A33" },
    "LAL": { conf: "WEST", div: "Pacific", nbaId: 1610612747, color: "#552583" },
    "GSW": { conf: "WEST", div: "Pacific", nbaId: 1610612744, color: "#1D428A" },
    // ... להוסיף כאן את שאר ה-30 קבוצות לפי הצורך ...
};

async function initDynamicPage() {
    // שליפת ה-ID מהכתובת (למשל ?id=2)
    const urlParams = new URLSearchParams(window.location.search);
    const teamId = urlParams.get('id');

    if (!teamId) return;

    try {
        // א. משיכת נתוני קבוצה מה-Backend
        const teamRes = await fetch(`http://localhost:8000/teams/${teamId}`);
        const team = await teamRes.json();
        
        // עדכון ה-Header (לוגו, שם וצבע)
        updateTeamHeader(team);

        // ב. משיכת שחקני הקבוצה
        const playersRes = await fetch(`http://localhost:8000/teams/${teamId}/players`);
        const players = await playersRes.json();

        // ג. רינדור השחקנים לפי עמדות
        renderRosterByPositions(players);

    } catch (err) {
        console.error("Error loading dynamic data:", err);
    }
}

function updateTeamHeader(team) {
    const extra = teamExtraData[team.abbreviation] || { nbaId: 0, color: "#111", conf: "NBA", div: "Global" };
    
    document.querySelector('.team-hero-logo').src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
    document.querySelector('.hero-city').innerText = team.city.toUpperCase();
    document.querySelector('.hero-brand').innerText = team.name.split(' ').pop().toUpperCase();
    document.querySelector('.hero-brand').style.color = extra.color;
    document.querySelector('.hero-meta').innerText = `${extra.conf}ERN CONFERENCE • ${extra.div.toUpperCase()}`;
}

function renderRosterByPositions(players) {
    const container = document.getElementById('dynamicRoster');
    container.innerHTML = ''; // ניקוי ה-MVP הקשיח
    
    // הגדרת קבוצות עמדות
    const positionGroups = {
        "GUARDS": players.filter(p => p.position.includes("Guard")),
        "FORWARDS": players.filter(p => p.position.includes("Forward")),
        "CENTERS": players.filter(p => p.position.includes("Center"))
    };

    // רינדור כל קבוצה בנפרד
    for (const [posName, groupPlayers] of Object.entries(positionGroups)) {
        if (groupPlayers.length === 0) continue;

        const groupHTML = `
            <div class="pos-group">
                <h3 class="position-group-title">${posName}</h3>
                <div class="players-grid">
                    ${groupPlayers.map(p => createPlayerCardHTML(p)).join('')}
                </div>
            </div>
        `;
        container.insertAdjacentHTML('beforeend', groupHTML);
    }
    
    document.querySelector('.count-badge').innerText = `(${players.length} PLAYERS)`;
}

// פונקציית עזר לייצור ה-HTML של כרטיס שחקן (בדיוק לפי העיצוב שלך)
function createPlayerCardHTML(p) {
    return `
        <div class="player-card">
            <div class="card-left">
              <div class="player-num-box">#${p.number || '00'}</div>
              <div class="player-info-text">
                <span class="p-pos">${p.position}</span>
                <span class="p-name">${p.full_name.toUpperCase()}</span>
                <span class="p-phys">${p.height}" | ${p.weight} lbs</span>
              </div>
            </div>
            <div class="card-right">
              <div class="stat-item"><span class="stat-val">${p.ppg || '0.0'}</span><span class="stat-lbl">PPG</span></div>
              <div class="stat-item"><span class="stat-val">${p.rpg || '0.0'}</span><span class="stat-lbl">RPG</span></div>
              <div class="stat-item"><span class="stat-val">${p.apg || '0.0'}</span><span class="stat-lbl">APG</span></div>
              <div class="card-icons">
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-arrow-right"></i>
              </div>
            </div>
        </div>
    `;
}

// הפעלה בטעינה
initDynamicPage();