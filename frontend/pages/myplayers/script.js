// --- Team Data Configuration (Global Standard) ---
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

// --- Initialization ---
async function initWatchlistPage() {
    initUserDisplay();
    const userId = localStorage.getItem('userId');
    if (!userId) {
        showEmptyState();
        return;
    }
    await fetchFollowedPlayers(userId);
}

// --- Data Management ---
async function fetchFollowedPlayers(userId) {
    try {
        const res = await fetch(`/api/users/${userId}/followed-players`);
        if (!res.ok) throw new Error('Failed to fetch');
        const players = await res.json();

        if (players.length === 0) {
            showEmptyState();
        } else {
            document.getElementById('emptyState').classList.add('hidden');
            document.getElementById('watchlistContainer').classList.remove('hidden');
            renderWatchlist(players);
        }
        updatePlayerCount(players.length);
    } catch (err) {
        console.error(err);
        showEmptyState();
    }
}

function renderWatchlist(players) {
    const container = document.getElementById('watchlistContainer');
    container.innerHTML = '';

    players.forEach(player => {
        const card = createElitePlayerCard(player);
        container.appendChild(card);
    });
}

// --- Component Factory: Elite Card (Rectangular) ---
function createElitePlayerCard(p) {
    const card = document.createElement('div');
    card.className = "group relative bg-surface-dark border-2 border-slate-800 rounded-3xl p-6 transition-all hover:border-primary hover:scale-[1.02] hover:shadow-2xl hover:shadow-black/60 cursor-pointer overflow-hidden";

    const teamData = teamExtraData[p.team_abbreviation] || { nbaId: 0, color: "#137fec" };
    const stats = p.latest_stats || {};

    card.innerHTML = `
        <!-- High-End Background Accent -->
        <div class="absolute top-0 right-0 size-32 bg-gradient-to-bl from-primary/10 to-transparent -mr-16 -mt-16 rounded-full blur-3xl opacity-0 group-hover:opacity-100 transition-opacity"></div>
        
        <div class="flex items-center gap-6 relative z-10">
            <!-- Team Circle -->
            <div class="size-16 rounded-2xl bg-background-dark/80 border border-slate-800 flex items-center justify-center p-2.5 transition-transform group-hover:scale-110">
                <img src="https://cdn.nba.com/logos/nba/${teamData.nbaId}/primary/L/logo.svg" 
                     alt="${p.team_abbreviation}" 
                     class="w-full h-full object-contain">
            </div>

            <div class="flex-1 min-w-0">
                <div class="flex items-center gap-2 mb-1">
                    <span class="px-2 py-0.5 rounded-full bg-slate-800 text-slate-500 font-bold tracking-widest text-[8px] uppercase">${p.position}</span>
                    <span class="text-slate-500 font-bold tracking-widest text-[8px] uppercase">${p.team_name}</span>
                </div>
                <h3 class="text-xl font-black text-white truncate uppercase tracking-tight leading-tight mb-2">${p.full_name}</h3>
                
                <div class="flex items-center gap-4 text-slate-400">
                    <div class="flex flex-col">
                        <span class="text-[10px] font-black uppercase text-slate-600 tracking-tighter">PPG</span>
                        <span class="text-base font-black text-white">${formatVal(stats.avg_points)}</span>
                    </div>
                    <div class="flex flex-col">
                        <span class="text-[10px] font-black uppercase text-slate-600 tracking-tighter">RPG</span>
                        <span class="text-base font-black text-white">${formatVal(stats.avg_rebounds)}</span>
                    </div>
                    <div class="flex flex-col">
                        <span class="text-[10px] font-black uppercase text-slate-600 tracking-tighter">APG</span>
                        <span class="text-base font-black text-white">${formatVal(stats.avg_assists)}</span>
                    </div>
                </div>
            </div>

            <!-- Unfollow Action -->
            <button class="unfollow-btn size-10 rounded-xl bg-slate-800/50 flex items-center justify-center text-emerald-500 border border-emerald-500/20 hover:bg-emerald-500 hover:text-white transition-all shadow-lg shadow-emerald-500/10">
                <span class="material-symbols-outlined text-xl">verified</span>
            </button>
        </div>
    `;

    card.onclick = (e) => {
        if (!e.target.closest('.unfollow-btn')) {
            window.location.href = `../player/index.html?id=${p.id}`;
        }
    };

    const unsubBtn = card.querySelector('.unfollow-btn');
    unsubBtn.onclick = async (e) => {
        e.stopPropagation();
        await handleUnfollow(p.id, card);
    };

    return card;
}

// --- Utils & Interactions ---
async function handleUnfollow(playerId, cardElement) {
    const userId = localStorage.getItem('userId');
    if (!userId) return;

    try {
        const res = await fetch(`/api/users/${userId}/followed-players/${playerId}`, { method: 'DELETE' });
        if (res.ok) {
            cardElement.style.opacity = '0';
            cardElement.style.transform = 'scale(0.95)';
            setTimeout(() => {
                cardElement.remove();
                checkRemainingPlayers();
            }, 300);
        }
    } catch (err) { console.error(err); }
}

function checkRemainingPlayers() {
    const container = document.getElementById('watchlistContainer');
    const count = container.children.length;
    updatePlayerCount(count);
    if (count === 0) showEmptyState();
}

function updatePlayerCount(count) {
    const el = document.getElementById('playerCount');
    if (el) el.textContent = `${count} PLAYER${count === 1 ? '' : 'S'} FOLLOWED`;
}

function formatVal(v) {
    return (v !== undefined && v !== null) ? v.toFixed(1) : "0.0";
}

function showEmptyState() {
    document.getElementById('emptyState').classList.remove('hidden');
    document.getElementById('watchlistContainer').classList.add('hidden');
}

function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const storedName = localStorage.getItem('userName');
    if (userNameDisplay) {
        userNameDisplay.textContent = storedName ? storedName.toUpperCase() : "GUEST";
    }
    const logoutBtn = document.querySelector('.logout-btn');
    if (logoutBtn) {
        logoutBtn.onclick = (e) => {
            e.preventDefault();
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

document.addEventListener('DOMContentLoaded', initWatchlistPage);
