// --- Team Data Configuration ---
const teamExtraData = {
    "ATL": { conf: "EAST", div: "Southeast", nbaId: 1610612737 },
    "BOS": { conf: "EAST", div: "Atlantic", nbaId: 1610612738 },
    "CLE": { conf: "EAST", div: "Central", nbaId: 1610612739 },
    "NOP": { conf: "WEST", div: "Southwest", nbaId: 1610612740 },
    "CHI": { conf: "EAST", div: "Central", nbaId: 1610612741 },
    "DAL": { conf: "WEST", div: "Southwest", nbaId: 1610612742 },
    "DEN": { conf: "WEST", div: "Northwest", nbaId: 1610612743 },
    "GSW": { conf: "WEST", div: "Southwest", nbaId: 1610612744 },
    "HOU": { conf: "WEST", div: "Southwest", nbaId: 1610612745 },
    "LAC": { conf: "WEST", div: "Pacific", nbaId: 1610612746 },
    "LAL": { conf: "WEST", div: "Pacific", nbaId: 1610612747 },
    "BKN": { conf: "EAST", div: "Atlantic", nbaId: 1610612751 },
    "NYK": { conf: "EAST", div: "Atlantic", nbaId: 1610612752 },
    "PHI": { conf: "EAST", div: "Atlantic", nbaId: 1610612755 },
    "PHX": { conf: "WEST", div: "Pacific", nbaId: 1610612756 },
    "POR": { conf: "WEST", div: "Northwest", nbaId: 1610612757 },
    "SAC": { conf: "WEST", div: "Pacific", nbaId: 1610612758 },
    "SAS": { conf: "WEST", div: "Southwest", nbaId: 1610612759 },
    "OKC": { conf: "WEST", div: "Northwest", nbaId: 1610612760 },
    "UTA": { conf: "WEST", div: "Northwest", nbaId: 1610612762 },
    "MEM": { conf: "WEST", div: "Southwest", nbaId: 1610612763 },
    "DET": { conf: "EAST", div: "Central", nbaId: 1610612765 },
    "CHA": { conf: "EAST", div: "Southeast", nbaId: 1610612766 },
    "MIL": { conf: "EAST", div: "Central", nbaId: 1610612749 },
    "IND": { conf: "EAST", div: "Central", nbaId: 1610612754 },
    "MIA": { conf: "EAST", div: "Southeast", nbaId: 1610612748 },
    "ORL": { conf: "EAST", div: "Southeast", nbaId: 1610612753 },
    "TOR": { conf: "EAST", div: "Atlantic", nbaId: 1610612761 },
    "MIN": { conf: "WEST", div: "Northwest", nbaId: 1610612750 },
    "WAS": { conf: "EAST", div: "Southeast", nbaId: 1610612764 }
};

// --- Initialization ---
async function initDynamicPage() {
    initUserDisplay();
    const urlParams = new URLSearchParams(window.location.search);
    const teamId = urlParams.get('id');
    if (!teamId) return;
    try {
        const teamRes = await fetch(`/api/teams/${teamId}`);
        if (!teamRes.ok) throw new Error("Team not found");
        const team = await teamRes.json();
        updateUIHeader(team);

        const playersRes = await fetch(`/api/teams/${teamId}/players`);
        if (!playersRes.ok) throw new Error("Players not found");
        const players = await playersRes.json();
        renderPlayers(players);
    } catch (err) {
        console.error("Error fetching data:", err);
        document.getElementById('dynamicRoster').innerHTML = `
            <div class="text-center py-20 border border-dashed border-slate-800 rounded-3xl">
                <span class="material-symbols-outlined text-6xl text-slate-700 mb-4 italic">error</span>
                <p class="text-slate-500 font-bold uppercase tracking-widest">Analytics Unavailable for this Team</p>
            </div>`;
    }
}

// --- Header Update ---
function updateUIHeader(team) {
    const extra = teamExtraData[team.abbreviation] || { nbaId: 0, conf: "NBA", div: "N/A" };

    // Logo
    const logoImg = document.getElementById('teamLogo');
    const placeholder = document.getElementById('logoPlaceholder');
    if (logoImg && extra.nbaId !== 0) {
        logoImg.src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
        logoImg.style.display = 'block';
        if (placeholder) placeholder.style.display = 'none';
    }

    // Text Data
    document.getElementById('teamCity').innerText = team.city;
    document.getElementById('teamName').innerText = team.name;
    document.getElementById('teamMeta').innerText = `${extra.conf}ERN CONFERENCE • ${extra.div}`;
}

// --- Render Players (ELITE RECTANGULAR STYLE) ---
async function renderPlayers(players) {
    const container = document.getElementById('dynamicRoster');
    if (!container) return;

    // Grouping
    const groupedPlayers = { 'GUARDS': [], 'FORWARDS': [], 'CENTERS': [] };
    players.forEach(p => {
        const pos = (p.position || '').toUpperCase();
        if (pos.startsWith('G')) groupedPlayers['GUARDS'].push(p);
        else if (pos.startsWith('F')) groupedPlayers['FORWARDS'].push(p);
        else if (pos.startsWith('C')) groupedPlayers['CENTERS'].push(p);
        else groupedPlayers['GUARDS'].push(p);
    });

    let html = '';
    const order = ['GUARDS', 'FORWARDS', 'CENTERS'];

    order.forEach(groupName => {
        const groupPlayers = groupedPlayers[groupName];
        if (!groupPlayers || groupPlayers.length === 0) return;

        // Group Title (Prominent Elite Style)
        html += `
        <div class="mt-16 mb-8 flex items-center gap-6">
            <h3 class="text-base font-black text-primary tracking-[0.4em] uppercase italic whitespace-nowrap">${groupName}</h3>
            <div class="h-[2px] w-full bg-slate-800/50"></div>
        </div>`;

        html += '<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 xl:grid-cols-3 gap-6">';

        groupPlayers.forEach(p => {
            const nameParts = p.full_name.trim().split(/\s+/);
            const initials = nameParts.length >= 2
                ? (nameParts[0][0] + nameParts[nameParts.length - 1][0]).toUpperCase()
                : nameParts[0][0].toUpperCase();

            const stats = p.latest_stats;
            const formatStat = (val) => (val === null || val === undefined || val === 0) ? "0.0" : val.toFixed(1);

            html += `
                <div class="group p-6 bg-surface-dark border-2 border-slate-800 rounded-3xl hover:border-primary transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl hover:shadow-black/60 flex flex-col cursor-pointer" onclick="navigateToPlayer(${p.id})">
                    
                    <div class="flex items-center gap-5 mb-6">
                        <div class="size-16 rounded-full bg-slate-800/80 flex items-center justify-center text-xl font-black text-white border-2 border-slate-700 group-hover:border-primary group-hover:scale-105 transition-all flex-shrink-0">
                            ${initials}
                        </div>
                        <div class="overflow-hidden">
                            <h3 class="text-2xl font-black text-white leading-tight uppercase truncate group-hover:text-primary transition-colors tracking-tighter">${p.full_name}</h3>
                            <span class="text-[10px] text-slate-500 font-black uppercase tracking-widest italic">${p.position}</span>
                        </div>
                    </div>

                    <div class="grid grid-cols-3 gap-2 py-4 border-t border-slate-800/80 bg-black/10 rounded-2xl px-3 mt-auto">
                        <div class="text-center">
                            <span class="block text-2xl font-black text-white">${formatStat(stats?.avg_points)}</span>
                            <span class="block text-[9px] text-slate-500 font-black uppercase tracking-[0.2em] mt-1">PPG</span>
                        </div>
                        <div class="text-center border-x border-slate-800/50">
                            <span class="block text-2xl font-black text-white">${formatStat(stats?.avg_rebounds)}</span>
                            <span class="block text-[9px] text-slate-500 font-black uppercase tracking-[0.2em] mt-1">RPG</span>
                        </div>
                        <div class="text-center">
                            <span class="block text-2xl font-black text-white">${formatStat(stats?.avg_assists)}</span>
                            <span class="block text-[9px] text-slate-500 font-black uppercase tracking-[0.2em] mt-1">APG</span>
                        </div>
                    </div>
                </div>`;
        });
        html += '</div>';
    });

    container.innerHTML = html;

    const rosterCountEl = document.getElementById('rosterCount');
    if (rosterCountEl) rosterCountEl.innerText = `${players.length} PLAYERS`;
}

// --- Navigation ---
function navigateToPlayer(playerId) {
    window.location.href = `../player/index.html?id=${playerId}`;
}

// --- User Display (Exact Home Match) ---
function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const logoutBtn = document.querySelector('.logout-btn');
    const storedName = localStorage.getItem('userName');

    if (userNameDisplay) {
        if (storedName) {
            userNameDisplay.textContent = storedName.toUpperCase(); // Force Uppercase for premium look
        } else {
            userNameDisplay.textContent = "GUEST";
        }
    }

    if (logoutBtn) {
        logoutBtn.onclick = (e) => {
            e.preventDefault();
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

document.addEventListener('DOMContentLoaded', initDynamicPage);