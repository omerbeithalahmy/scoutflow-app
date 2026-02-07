// --- Team Data Configuration ---
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
async function initPlayerPage() {
    initUserDisplay();
    const urlParams = new URLSearchParams(window.location.search);
    const playerId = urlParams.get('id');

    if (!playerId) {
        window.location.href = '../homepage/index.html';
        return;
    }

    try {
        const res = await fetch(`/api/players/${playerId}`);
        if (!res.ok) throw new Error("Player not found");
        const player = await res.json();
        renderPlayerProfile(player);
        setupFollowButton(playerId); // Re-activate follow logic
    } catch (err) {
        console.error(err);
        showErrorState();
    }
}

// --- Follow Logic (Emerald & Blue Design) ---
async function setupFollowButton(playerId) {
    const userId = localStorage.getItem('userId');
    const followBtn = document.querySelector('.follow-btn');
    if (!userId || !followBtn) return;

    try {
        const res = await fetch(`/api/users/${userId}/followed-players/${playerId}/status`);
        if (res.ok) {
            const data = await res.json();
            updateFollowButtonState(followBtn, data.is_following);
        }
    } catch (err) { console.error('Error status:', err); }

    followBtn.onclick = (e) => {
        e.preventDefault();
        toggleFollow(playerId, followBtn);
    };
}

async function toggleFollow(playerId, button) {
    const userId = localStorage.getItem('userId');
    if (!userId) { alert('Please log in to follow players'); return; }

    const isFollowing = button.classList.contains('bg-emerald-500/10');

    try {
        if (isFollowing) {
            const res = await fetch(`/api/users/${userId}/followed-players/${playerId}`, { method: 'DELETE' });
            if (res.ok) updateFollowButtonState(button, false);
        } else {
            const res = await fetch(`/api/users/${userId}/followed-players/${playerId}`, { method: 'POST' });
            if (res.ok) updateFollowButtonState(button, true);
        }
    } catch (err) { console.error('Error toggling:', err); }
}

function updateFollowButtonState(button, isFollowing) {
    if (isFollowing) {
        button.className = "follow-btn px-8 py-4 bg-emerald-500/10 border-2 border-emerald-500 text-emerald-500 rounded-xl font-black uppercase tracking-widest text-xs transition-all shadow-xl shadow-emerald-500/10 flex items-center gap-2";
        button.innerHTML = `<span class="material-symbols-outlined text-base">verified</span> FOLLOWING`;
    } else {
        button.className = "follow-btn px-8 py-4 bg-primary text-white rounded-xl font-black uppercase tracking-widest text-xs hover:scale-105 transition-all shadow-xl shadow-primary/20 flex items-center gap-2";
        button.innerHTML = `<span class="material-symbols-outlined text-base">add_circle</span> FOLLOW`;
    }
}

// --- Header & Layout ---
function renderPlayerProfile(p) {
    const extra = teamExtraData[p.team_abbreviation] || { nbaId: 0, color: "#137fec" };

    // Team Logo & Name Casing
    const logoImg = document.getElementById('playerTeamLogo');
    const placeholder = document.getElementById('logoPlaceholder');
    if (logoImg && extra.nbaId !== 0) {
        logoImg.src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
        logoImg.style.display = 'block';
        if (placeholder) placeholder.style.display = 'none';
    }

    // Name Split for Design
    const nameParts = p.full_name.trim().split(/\s+/);
    document.getElementById('firstName').innerText = nameParts[0].toUpperCase();
    document.getElementById('lastName').innerText = nameParts.slice(1).join(" ").toUpperCase();

    // Bio Data
    document.getElementById('teamName').innerText = p.team_name.toUpperCase();
    document.getElementById('playerAge').innerText = `${p.age || '--'} YEARS OLD`;
    document.getElementById('playerPosition').innerText = p.position || 'NBA';

    // Back Link
    const backBtn = document.getElementById('backLink');
    if (backBtn) {
        backBtn.href = `../teams/index.html?id=${p.team_id}`;
        backBtn.innerHTML = `<span class="material-symbols-outlined text-lg">arrow_back</span> BACK TO ${p.team_name.toUpperCase()}`;
    }

    // Stats
    if (p.season_stats && p.season_stats.length > 0) {
        const s = p.season_stats[0];
        document.getElementById('gamesPlayed').innerText = `${s.games_played || 0} GAMES PLAYED`;
        renderPrimaryStats(s);
        renderAdvancedStats(s);
    } else {
        noStatsFound();
    }
}

// --- Stats Rendering (The Dashboard) ---
function renderPrimaryStats(s) {
    const container = document.getElementById('primaryStats');
    const stats = [
        { label: 'PPG', val: s.avg_points, icon: 'bolt' },
        { label: 'RPG', val: s.avg_rebounds, icon: 'height' },
        { label: 'APG', val: s.avg_assists, icon: 'alt_route' },
        { label: 'SPG', val: s.avg_steals, icon: 'stadium' },
        { label: 'BPG', val: s.avg_blocks, icon: 'shield' },
        { label: 'TOV', val: s.avg_turnovers, icon: 'priority_high' },
        { label: 'MPG', val: s.avg_minutes, icon: 'timer' }
    ];

    container.innerHTML = stats.map(st => `
        <div class="group p-5 bg-surface-dark border-2 border-slate-800 rounded-2xl flex flex-col items-center justify-center transition-all hover:border-primary hover:-translate-y-1 hover:shadow-lg hover:shadow-black/40">
            <span class="block text-3xl font-black text-white mb-2 tracking-tighter">${formatVal(st.val)}</span>
            <div class="flex items-center gap-1.5 opacity-40 group-hover:opacity-100 transition-opacity">
                <span class="material-symbols-outlined text-xs">${st.icon}</span>
                <span class="text-[9px] font-black uppercase tracking-[0.2em]">${st.label}</span>
            </div>
        </div>
    `).join('');
}

function renderAdvancedStats(s) {
    const container = document.getElementById('advancedStats');
    const adv = [
        { label: 'Usage Percentage', val: s.usage_pct, suffix: '%', icon: 'speed', desc: 'Efficiency of player possessions' },
        { label: 'True Shooting', val: s.ts_pct, isPct: true, icon: 'crosshairs', desc: 'Shooting efficiency (FT, 2P, 3P)' },
        { label: 'Eff. FG Percentage', val: s.efg_pct, isPct: true, icon: 'target', desc: 'Value of 3PT field goals' },
        { label: 'Offensive Rating', val: s.ortg, icon: 'trending_up', desc: 'Points per 100 possessions' },
        { label: 'Defensive Rating', val: s.drtg, icon: 'trending_down', desc: 'Points allowed per 100' },
        { label: 'Versatility Index', val: s.vi, icon: 'extension', desc: 'Overall statistical density' }
    ];

    container.innerHTML = adv.map(st => `
        <div class="group p-8 bg-surface-dark border-2 border-slate-800 rounded-3xl transition-all hover:border-primary hover:shadow-2xl hover:shadow-black/60">
            <div class="flex justify-between items-start mb-6">
                <div class="size-12 rounded-xl bg-slate-800/50 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                    <span class="material-symbols-outlined text-slate-500 group-hover:text-primary transition-colors">${st.icon}</span>
                </div>
                <div class="text-right">
                    <span class="block text-4xl font-black text-white leading-none">${st.isPct ? (st.val * 100).toFixed(1) + '%' : formatVal(st.val)}</span>
                    <span class="text-[10px] text-slate-500 font-bold uppercase tracking-widest mt-2 block">${st.label}</span>
                </div>
            </div>
            <p class="text-slate-500 text-xs font-medium leading-relaxed group-hover:text-slate-300 transition-colors">${st.desc}</p>
        </div>
    `).join('');
}

// --- Utils ---
function formatVal(v) {
    return (v !== undefined && v !== null && v !== 0) ? v.toFixed(1) : "0.0";
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

function showErrorState() {
    document.main.innerHTML = `
        <div class="flex flex-col items-center justify-center py-40 border-2 border-dashed border-slate-800 rounded-3xl">
            <span class="material-symbols-outlined text-6xl text-slate-700 mb-6 italic">error</span>
            <h2 class="text-2xl font-black uppercase text-slate-500">Player Data Unreachable</h2>
            <a href="../homepage/index.html" class="mt-8 text-primary font-bold hover:underline">Return to Roster</a>
        </div>`;
}

function noStatsFound() {
    [document.getElementById('primaryStats'), document.getElementById('advancedStats')].forEach(el => {
        if (el) el.innerHTML = '<div class="col-span-full py-20 text-center text-slate-600 font-bold uppercase tracking-widest italic">No Data Captured for This Player</div>';
    });
}

document.addEventListener('DOMContentLoaded', initPlayerPage);