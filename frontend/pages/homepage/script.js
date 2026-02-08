// --- Configuration & Data ---
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

// --- DOM Elements ---
const gridEast = document.getElementById('grid-east');
const gridWest = document.getElementById('grid-west');
const tabEast = document.getElementById('tabEast');
const tabWest = document.getElementById('tabWest');

// --- API Calls ---
async function fetchTeamsFromDB() {
    try {
        const response = await fetch('/api/teams/');
        const teamsData = await response.json();
        renderTeams(teamsData);
    } catch (error) {
        console.error("Failed to fetch teams:", error);
    }
}

// --- Render Logic ---
function renderTeams(teams) {
    if (!gridEast || !gridWest) return;
    gridEast.innerHTML = '';
    gridWest.innerHTML = '';

    teams.forEach(team => {
        const extra = teamExtraData[team.abbreviation] || { conf: "east", div: "N/A", nbaId: 0 };
        const logoUrl = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;

        const cardHTML = `
            <div class="group flex items-center justify-between p-5 bg-[#192633] border border-slate-800 rounded-xl hover:border-primary cursor-pointer transition-all duration-300 hover:-translate-y-1 hover:shadow-lg shadow-black/20 w-full md:w-[calc(50%-1.25rem)] lg:w-[calc(33.333%-1.25rem)] xl:w-[calc(25%-1.25rem)]" onclick="handleTeamClick(${team.id})">
                <div class="flex items-center gap-4">
                    <img src="${logoUrl}" alt="${team.name}" class="w-12 h-12 object-contain group-hover:scale-110 transition-transform duration-300">
                    <div>
                        <span class="block text-[10px] font-bold text-slate-400 uppercase tracking-wider">${team.city}</span>
                        <h3 class="text-lg font-black text-white leading-tight uppercase">${team.name}</h3>
                        <div class="flex gap-2 mt-1">
                            <span class="bg-slate-800 text-slate-300 text-[9px] font-bold px-1.5 py-0.5 rounded">${team.abbreviation}</span>
                            <span class="text-[9px] text-slate-500 font-medium">${extra.div}</span>
                        </div>
                    </div>
                </div>
                <span class="material-symbols-outlined text-slate-600 group-hover:text-primary transition-colors">arrow_forward</span>
            </div>`;

        if (extra.conf === 'east') gridEast.innerHTML += cardHTML;
        else gridWest.innerHTML += cardHTML;
    });
}

function handleTeamClick(id) {
    window.location.href = `../teams/index.html?id=${id}`;
}

// --- ANIMATION LOGIC (SLIDER) ---
tabWest.addEventListener('click', () => {
    tabEast.classList.remove('active', 'text-white');
    tabEast.classList.add('text-slate-500');
    tabEast.querySelector('.active-line').classList.add('hidden');

    tabWest.classList.add('active', 'text-white');
    tabWest.classList.remove('text-slate-500');
    tabWest.querySelector('.active-line').classList.remove('hidden');

    gridEast.classList.remove('translate-x-0', 'opacity-100', 'z-10');
    gridEast.classList.add('-translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');

    gridWest.classList.remove('translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');
    gridWest.classList.add('translate-x-0', 'opacity-100', 'z-10');
});

tabEast.addEventListener('click', () => {
    tabWest.classList.remove('active', 'text-white');
    tabWest.classList.add('text-slate-500');
    tabWest.querySelector('.active-line').classList.add('hidden');

    tabEast.classList.add('active', 'text-white');
    tabEast.classList.remove('text-slate-500');
    tabEast.querySelector('.active-line').classList.remove('hidden');

    gridWest.classList.remove('translate-x-0', 'opacity-100', 'z-10');
    gridWest.classList.add('translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');

    gridEast.classList.remove('-translate-x-full', 'opacity-0', 'pointer-events-none', 'z-0');
    gridEast.classList.add('translate-x-0', 'opacity-100', 'z-10');
});

// --- Search Logic ---
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
            if (suggestionsBox) suggestionsBox.classList.add('hidden');
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
            suggestionsBox.classList.add('hidden');
        }
    });
}

function renderSuggestions(players) {
    if (!suggestionsBox) return;
    suggestionsBox.innerHTML = '';

    if (!players || !Array.isArray(players) || players.length === 0) {
        suggestionsBox.classList.add('hidden');
        return;
    }

    suggestionsBox.classList.remove('hidden');

    players.forEach(player => {
        const ppg = (player.ppg !== undefined) ? player.ppg : '0.0';
        const team = player.team_abbr || "NBA";

        const div = document.createElement('div');
        div.className = 'flex items-center justify-between p-4 cursor-pointer hover:bg-slate-800 transition-colors border-b border-slate-700 last:border-0 text-left';
        div.innerHTML = `
            <div class="flex items-center gap-3">
                <div class="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center text-[10px] font-bold text-white">${team}</div>
                <div>
                    <span class="block text-sm font-bold text-white">${player.full_name}</span>
                    <span class="block text-xs text-slate-400">${team}</span>
                </div>
            </div>
            <span class="bg-primary/20 text-primary text-xs font-bold px-2 py-1 rounded-full">${ppg} PPG</span>
        `;

        div.onclick = () => {
            window.location.href = `../player/index.html?id=${player.id}`;
        };
        suggestionsBox.appendChild(div);
    });
}

// --- User Display & Navigation Logic (UPDATED) ---
function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const logoutBtn = document.querySelector('.logout-btn');
    const storedName = localStorage.getItem('userName');

    // 1. Display Username (Not clickable)
    if (storedName && userNameDisplay) {
        userNameDisplay.textContent = storedName.toUpperCase(); // Force Uppercase for premium look
    } else if (userNameDisplay) {
        userNameDisplay.textContent = "guest";
    }

    // 2. Handle Logout -> Go to Login Screen
    if (logoutBtn) {
        logoutBtn.onclick = (e) => {
            e.preventDefault();
            localStorage.clear();
            window.location.href = '../auth/index.html'; // Redirect to login
        };
    }
}

document.addEventListener('DOMContentLoaded', () => {
    initUserDisplay();
    fetchTeamsFromDB();
});