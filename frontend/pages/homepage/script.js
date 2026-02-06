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

async function fetchTeamsFromDB() {
    try {
        const response = await fetch('/api/teams/');
        const teamsData = await response.json();
        renderTeams(teamsData);
    } catch (error) {
        console.error("Failed to fetch teams:", error);
    }
}

function renderTeams(teams) {
    if (!grids.east || !grids.west) return;
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
            </div>`;
        if (extra.conf === 'east') grids.east.innerHTML += cardHTML;
        else grids.west.innerHTML += cardHTML;
    });
    grids.east.classList.add('active');
}

function handleTeamClick(id) {
    window.location.href = `../teams/index.html?id=${id}`;
}

document.querySelectorAll('.filter-tab').forEach(tab => {
    tab.addEventListener('click', () => {
        const activeTab = document.querySelector('.filter-tab.active');
        if (activeTab) activeTab.classList.remove('active');
        tab.classList.add('active');
        const offset = tab.dataset.index * 50;
        if (slider) slider.style.transform = `translateX(-${offset}%)`;
        document.querySelectorAll('.teams-grid').forEach(g => g.classList.remove('active'));
        if (grids[tab.dataset.filter]) grids[tab.dataset.filter].classList.add('active');
    });
});

const searchInput = document.getElementById('teamSearch');
const suggestionsBox = document.getElementById('searchSuggestions');
let debounceTimer;

if (searchInput) {
    searchInput.addEventListener('keypress', async (e) => {
        if (e.key === 'Enter') {
            const query = searchInput.value.trim();
            if (query.length < 2) return;
            try {
                const response = await fetch(`/api/players/suggestions?q=${encodeURIComponent(query)}`);
                const players = await response.json();
                if (players && players.length > 0) {
                    window.location.href = `../player/index.html?id=${players[0].id}`;
                }
            } catch (err) { console.error("Enter search error:", err); }
        }
    });
    searchInput.addEventListener('input', (e) => {
        const query = e.target.value.trim();
        clearTimeout(debounceTimer);
        if (query.length < 2) {
            if (suggestionsBox) suggestionsBox.classList.add('card-hidden');
            return;
        }
        debounceTimer = setTimeout(async () => {
            try {
                const response = await fetch(`/api/players/suggestions?q=${encodeURIComponent(query)}`);
                if (response.ok) {
                    const players = await response.json();
                    renderSuggestions(players);
                }
            } catch (error) { console.error("Search error:", error); }
        }, 250);
    });
    document.addEventListener('click', (e) => {
        if (suggestionsBox && !searchInput.contains(e.target) && !suggestionsBox.contains(e.target)) {
            suggestionsBox.classList.add('card-hidden');
        }
    });
}

function renderSuggestions(players) {
    if (!suggestionsBox) return;
    suggestionsBox.innerHTML = '';
    if (!players || !Array.isArray(players) || players.length === 0) {
        suggestionsBox.classList.add('card-hidden');
        return;
    }
    suggestionsBox.classList.remove('card-hidden');
    players.forEach(player => {
        const ppg = (player.ppg !== undefined) ? player.ppg : '0.0';
        const team = player.team_abbr || "NBA";
        const div = document.createElement('div');
        div.className = 'suggestion-item';
        div.innerHTML = `
            <div class="player-circle-abbr">${team}</div>
            <div class="suggestion-info">
                <span class="suggestion-name">${player.full_name}</span>
                <span class="suggestion-team">${team}</span>
            </div>
            <div class="suggestion-stats">${ppg} PPG</div>
        `;
        div.onclick = () => {
            window.location.href = `../player/index.html?id=${player.id}`;
        };
        suggestionsBox.appendChild(div);
    });
}

function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const logoutBtn = document.querySelector('.logout-btn');
    const storedName = localStorage.getItem('userName');
    if (storedName && userNameDisplay) {
        userNameDisplay.textContent = storedName.toUpperCase();
    } else if (userNameDisplay) {
        userNameDisplay.textContent = "GUEST";
    }
    if (logoutBtn) {
        logoutBtn.onclick = () => {
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

document.addEventListener('DOMContentLoaded', () => {
    initUserDisplay();
    fetchTeamsFromDB();
});