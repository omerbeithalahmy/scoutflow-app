// 1. מיפוי נתונים משלימים (כדי לא לגעת ב-DB)
const teamExtraData = {
    "ATL": { conf: "east", div: "Southeast", nbaId: 1610612737 },
    "BOS": { conf: "east", div: "Atlantic", nbaId: 1610612738 },
    "BKN": { conf: "east", div: "Atlantic", nbaId: 1610612751 },
    "CHA": { conf: "east", div: "Southeast", nbaId: 1610612766 },
    "CHI": { conf: "east", div: "Central", nbaId: 1610612741 },
    "CLE": { conf: "east", div: "Central", nbaId: 1610612739 },
    "DET": { conf: "east", div: "Central", nbaId: 1610612765 },
    "IND": { conf: "east", div: "Central", nbaId: 1610612754 },
    "MIA": { conf: "east", div: "Southeast", nbaId: 1610612748 },
    "MIL": { conf: "east", div: "Central", nbaId: 1610612749 },
    "NYK": { conf: "east", div: "Atlantic", nbaId: 1610612752 },
    "ORL": { conf: "east", div: "Southeast", nbaId: 1610612753 },
    "PHI": { conf: "east", div: "Atlantic", nbaId: 1610612755 },
    "TOR": { conf: "east", div: "Atlantic", nbaId: 1610612761 },
    "WAS": { conf: "east", div: "Southeast", nbaId: 1610612764 },
    "DAL": { conf: "west", div: "Southwest", nbaId: 1610612742 },
    "DEN": { conf: "west", div: "Northwest", nbaId: 1610612743 },
    "GSW": { conf: "west", div: "Pacific", nbaId: 1610612744 },
    "HOU": { conf: "west", div: "Southwest", nbaId: 1610612745 },
    "LAC": { conf: "west", div: "Pacific", nbaId: 1610612746 },
    "LAL": { conf: "west", div: "Pacific", nbaId: 1610612747 },
    "MEM": { conf: "west", div: "Southwest", nbaId: 1610612763 },
    "MIN": { conf: "west", div: "Northwest", nbaId: 1610612750 },
    "NOP": { conf: "west", div: "Southwest", nbaId: 1610612740 },
    "OKC": { conf: "west", div: "Northwest", nbaId: 1610612760 },
    "PHX": { conf: "west", div: "Pacific", nbaId: 1610612756 },
    "POR": { conf: "west", div: "Northwest", nbaId: 1610612757 },
    "SAC": { conf: "west", div: "Pacific", nbaId: 1610612758 },
    "SAS": { conf: "west", div: "Southwest", nbaId: 1610612759 },
    "UTA": { conf: "west", div: "Northwest", nbaId: 1610612762 }
};

const slider = document.getElementById('teamsSlider');
const grids = {
    east: document.getElementById('grid-east'),
    west: document.getElementById('grid-west')
};

// 2. פונקציה למשיכת הנתונים מה-API של FastAPI
async function fetchTeamsFromDB() {
    try {
        const response = await fetch('http://localhost:8000/teams/'); 
        const teamsData = await response.json();
        renderTeams(teamsData);
    } catch (error) {
        console.error("Failed to fetch teams:", error);
    }
}

// 3. פונקציית רינדור
function renderTeams(teams) {
    grids.east.innerHTML = '';
    grids.west.innerHTML = '';

    teams.forEach(team => {
        const extra = teamExtraData[team.abbreviation] || { conf: "east", div: "N/A", nbaId: 0 };
        const logoUrl = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;

        const cardHTML = `
            <div class="team-card" onclick="handleTeamClick(${team.id})">
                <div class="team-info">
                    <img src="${logoUrl}" alt="${team.name}" class="team-logo">
                    <div class="team-details">
                        <span class="city">${team.city.toUpperCase()}</span>
                        <h3 class="team-name">${team.name.toUpperCase()}</h3>
                        <div class="meta">
                            <span class="abbr">${team.abbreviation}</span>
                            <span class="division">${extra.div}</span>
                        </div>
                    </div>
                </div>
                <i class="fa-solid fa-arrow-right-long arrow-icon"></i>
            </div>
        `;

        if (extra.conf === 'east') {
            grids.east.innerHTML += cardHTML;
        } else {
            grids.west.innerHTML += cardHTML;
        }
    });

    grids.east.classList.add('active');
}

// מעבר לדף רוסטר של קבוצה
function handleTeamClick(id) {
    console.log("Team selected ID:", id);
    // window.location.href = `team-roster.html?id=${id}`;
}

// 4. ניהול הטאבים (Slider)
document.querySelectorAll('.filter-tab').forEach(tab => {
    tab.addEventListener('click', () => {
        document.querySelector('.filter-tab.active').classList.remove('active');
        tab.classList.add('active');

        const offset = tab.dataset.index * 50; 
        slider.style.transform = `translateX(-${offset}%)`;

        document.querySelectorAll('.teams-grid').forEach(g => g.classList.remove('active'));
        const filter = tab.dataset.filter;
        grids[filter].classList.add('active');
    });
});

// 5. חיפוש שחקן (בלחיצה על Enter) - לא פוגע בכרטיסי הקבוצות
const searchInput = document.getElementById('teamSearch');

searchInput.addEventListener('keypress', async (e) => {
    if (e.key === 'Enter') {
        const query = e.target.value.trim();
        if (!query) return;

        console.log("Searching for player:", query);
        
        try {
            // קריאה ל-Backend (נשתמש בחיפוש לפי שם מלא שקיים לך ב-crud.py)
            const response = await fetch(`http://localhost:8000/players/search?full_name=${encodeURIComponent(query)}`);
            
            if (response.ok) {
                const player = await response.json();
                if (player && player.id) {
                    // מעבר לדף השחקן שנמצא
                    window.location.href = `player-details.html?id=${player.id}`;
                } else {
                    alert("Player not found in our database");
                }
            } else {
                alert("Could not find player. Try full name (e.g. LeBron James)");
            }
        } catch (error) {
            console.error("Search error:", error);
        }
    }
});

// הפעלה
fetchTeamsFromDB();