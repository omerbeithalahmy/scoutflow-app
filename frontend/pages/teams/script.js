// מיפוי נתונים משלימים ללוגו וצבעים (נשמר ב-Frontend)
const teamExtraData = {
    "ATL": { conf: "EAST", div: "Southeast", nbaId: 1610612737, color: "#E03A3E" },
    "BOS": { conf: "EAST", div: "Atlantic", nbaId: 1610612738, color: "#007A33" },
    "CLE": { conf: "EAST", div: "Central", nbaId: 1610612739, color: "#860038" },
    "NOP": { conf: "WEST", div: "Southwest", nbaId: 1610612740, color: "#0C2340" },
    "CHI": { conf: "EAST", div: "Central", nbaId: 1610612741, color: "#CE1141" },
    "DAL": { conf: "WEST", div: "Southwest", nbaId: 1610612742, color: "#00538C" },
    "DEN": { conf: "WEST", div: "Northwest", nbaId: 1610612743, color: "#0E2240" },
    "GSW": { conf: "WEST", div: "Pacific", nbaId: 1610612744, color: "#1D428A" },
    "HOU": { conf: "WEST", div: "Southwest", nbaId: 1610612745, color: "#CE1141" },
    "LAC": { conf: "WEST", div: "Pacific", nbaId: 1610612746, color: "#C8102E" },
    "LAL": { conf: "WEST", div: "Pacific", nbaId: 1610612747, color: "#552583" },
    "BKN": { conf: "EAST", div: "Atlantic", nbaId: 1610612751, color: "#000000" },
    "NYK": { conf: "EAST", div: "Atlantic", nbaId: 1610612752, color: "#006BB6" },
    "PHI": { conf: "EAST", div: "Atlantic", nbaId: 1610612755, color: "#006BB6" },
    "PHX": { conf: "WEST", div: "Pacific", nbaId: 1610612756, color: "#1D1160" },
    "POR": { conf: "WEST", div: "Northwest", nbaId: 1610612757, color: "#E03A3E" },
    "SAC": { conf: "WEST", div: "Pacific", nbaId: 1610612758, color: "#5A2D81" },
    "SAS": { conf: "WEST", div: "Southwest", nbaId: 1610612759, color: "#C4CED4" },
    "OKC": { conf: "WEST", div: "Northwest", nbaId: 1610612760, color: "#007AC1" },
    "UTA": { conf: "WEST", div: "Northwest", nbaId: 1610612762, color: "#002B5C" },
    "MEM": { conf: "WEST", div: "Southwest", nbaId: 1610612763, color: "#5D76A9" },
    "DET": { conf: "EAST", div: "Central", nbaId: 1610612765, color: "#1D42BA" },
    "CHA": { conf: "EAST", div: "Southeast", nbaId: 1610612766, color: "#00788C" },
    "MIL": { conf: "EAST", div: "Central", nbaId: 1610612749, color: "#00471B" },
    "IND": { conf: "EAST", div: "Central", nbaId: 1610612754, color: "#FDBB30" },
    "MIA": { conf: "EAST", div: "Southeast", nbaId: 1610612748, color: "#98002E" },
    "ORL": { conf: "EAST", div: "Southeast", nbaId: 1610612753, color: "#0077C0" },
    "TOR": { conf: "EAST", div: "Atlantic", nbaId: 1610612761, color: "#CE1141" },
    "MIN": { conf: "WEST", div: "Northwest", nbaId: 1610612750, color: "#0C2340" },
    "WAS": { conf: "EAST", div: "Southeast", nbaId: 1610612764, color: "#002B5C" }
};

async function initDynamicPage() {
    const urlParams = new URLSearchParams(window.location.search);
    const teamId = urlParams.get('id');

    console.log("מנסה לטעון את קבוצה מספר:", teamId);

    if (!teamId) {
        alert("לא נמצא ID בכתובת ה-URL");
        return;
    }

    try {
        // קריאה ראשונה: פרטי קבוצה
        const teamRes = await fetch(`http://localhost:8000/teams/${teamId}`);
        if (!teamRes.ok) throw new Error(`שגיאה בטעינת קבוצה: ${teamRes.status}`);
        const team = await teamRes.json();
        
        // עדכון כותרות
        updateUIHeader(team);

        // קריאה שנייה: שחקנים
        const playersRes = await fetch(`http://localhost:8000/teams/${teamId}/players`);
        if (!playersRes.ok) throw new Error(`שגיאה בטעינת שחקנים: ${playersRes.status}`);
        const players = await playersRes.json();

        // הצגת שחקנים
        renderPlayers(players);

    } catch (err) {
        console.error("שגיאה קריטית:", err);
        document.getElementById('teamMeta').innerText = "ERROR LOADING DATA";
    }
}

function updateUIHeader(team) {
    const extra = teamExtraData[team.abbreviation] || { nbaId: 0, color: "#111", conf: "NBA", div: "N/A" };
    
    // לוגו
    const logoImg = document.getElementById('teamLogo');
    if (logoImg) {
        logoImg.src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
        logoImg.style.display = 'block';
    }

    // טקסטים
    document.getElementById('teamCity').innerText = team.city.toUpperCase();
    document.getElementById('teamName').innerText = team.name.toUpperCase();
    document.getElementById('teamName').style.color = extra.color;
    document.getElementById('teamMeta').innerText = `${extra.conf}ERN CONFERENCE • ${extra.div.toUpperCase()}`;
}

function renderPlayers(players) {
    const container = document.getElementById('dynamicRoster');
    if (!container) return;

    if (players.length === 0) {
        container.innerHTML = "<h3>לא נמצאו שחקנים לקבוצה זו בבסיס הנתונים</h3>";
        return;
    }

    let html = '<div class="players-grid">';
    players.forEach(p => {
        html += `
            <div class="player-card">
              <div class="card-left">
                <div class="player-num-box">#--</div>
                <div class="player-info-text">
                  <span class="p-pos">${p.position || 'N/A'}</span>
                  <span class="p-name">${p.full_name.toUpperCase()}</span>
                  <span class="p-phys">NBA PLAYER</span>
                </div>
              </div>
              <div class="card-right">
                <div class="stat-item"><span class="stat-val">--</span><span class="stat-lbl">PPG</span></div>
                <div class="card-icons">
                  <i class="fa-regular fa-heart"></i>
                  <i class="fa-solid fa-arrow-right"></i>
                </div>
              </div>
            </div>`;
    });
    html += '</div>';
    
    container.innerHTML = html;
    document.getElementById('rosterCount').innerText = `(${players.length} PLAYERS)`;
}

initDynamicPage();