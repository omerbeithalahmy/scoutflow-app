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

    // Name Handling (Responsive & Dynamic)
    const fullName = p.full_name.trim().toUpperCase();
    const nameParts = fullName.split(/\s+/);
    const firstNameEl = document.getElementById('firstName');
    const lastNameEl = document.getElementById('lastName');
    const nameContainer = document.getElementById('nameContainer');

    if (firstNameEl && lastNameEl) {
        firstNameEl.innerText = nameParts[0];
        lastNameEl.innerText = ' ' + nameParts.slice(1).join(" ");

        // Dynamic Font Sizing for long names
        const totalLength = fullName.length;
        if (totalLength > 20) {
            nameContainer.className = "uppercase font-black tracking-tighter leading-[0.9] text-3xl md:text-5xl mb-2 transition-all";
        } else if (totalLength > 15) {
            nameContainer.className = "uppercase font-black tracking-tighter leading-[0.9] text-4xl md:text-6xl mb-2 transition-all";
        } else {
            nameContainer.className = "uppercase font-black tracking-tighter leading-[0.9] text-5xl md:text-7xl mb-2 transition-all";
        }
    }

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
        renderPrimaryStats(s, extra.color);
        renderAdvancedStats(s);
    } else {
        noStatsFound();
    }
}

// --- Stats Rendering (The Dashboard) ---
function renderPrimaryStats(s, teamColor) {
    const container = document.getElementById('primaryStats');
    const stats = [
        { label: 'PPG', val: s.avg_points, max: 35, icon: 'bolt' },
        { label: 'RPG', val: s.avg_rebounds, max: 15, icon: 'height' },
        { label: 'APG', val: s.avg_assists, max: 12, icon: 'alt_route' },
        { label: 'SPG', val: s.avg_steals, max: 3, icon: 'stadium' },
        { label: 'BPG', val: s.avg_blocks, max: 4, icon: 'shield' },
        { label: 'TOV', val: s.avg_turnovers, max: 6, icon: 'priority_high' },
        { label: 'MPG', val: s.avg_minutes, max: 48, icon: 'timer' }
    ];

    container.className = "col-span-full bg-surface-dark border-2 border-slate-800 rounded-[2.5rem] p-10 mt-6 overflow-hidden relative";

    container.innerHTML = `
        <div class="relative h-80 w-full mb-4">
            <!-- Technical Grid Lines -->
            <div class="absolute inset-0 flex flex-col justify-between pointer-events-none opacity-20">
                <div class="w-full h-px bg-slate-700"></div>
                <div class="w-full h-px bg-slate-700"></div>
                <div class="w-full h-px bg-slate-700"></div>
                <div class="w-full h-px bg-slate-700"></div>
            </div>

            <!-- Stats Grid -->
            <div class="grid grid-cols-7 gap-4 md:gap-8 h-full items-end relative z-10">
                ${stats.map(st => {
        // Ensure a minimum height of 4% for visibility of low stats
        const actualPercentage = (st.val / st.max) * 100;
        const displayPercentage = Math.max(actualPercentage, 4);

        return `
                        <div class="flex flex-col items-center h-full group">
                            <!-- Value -->
                            <span class="text-xl md:text-2xl font-black text-white mb-4 tracking-tighter transition-transform group-hover:scale-110">${formatVal(st.val)}</span>
                            
                            <!-- Bar Container -->
                            <div class="flex-1 w-full bg-slate-800/10 rounded-2xl relative overflow-hidden border border-slate-800/40 flex items-end">
                                <!-- The Bar with High-End Highlight -->
                                <div class="stat-bar w-full transition-all duration-1000 ease-out relative" 
                                     style="height: 0%; background-color: ${teamColor}"
                                     data-target="${displayPercentage}%">
                                    <!-- Bar Cap / Shine -->
                                    <div class="absolute top-0 left-0 w-full h-2 bg-white/20"></div>
                                    <div class="absolute inset-0 bg-gradient-to-t from-black/20 to-transparent"></div>
                                </div>
                                
                                <!-- Hover Overlay -->
                                <div class="absolute inset-0 bg-white/0 group-hover:bg-white/5 transition-colors"></div>
                            </div>

                            <!-- Labels -->
                            <div class="mt-6 flex flex-col items-center gap-1.5">
                                <span class="material-symbols-outlined text-[16px] text-slate-500 group-hover:text-white transition-colors">${st.icon}</span>
                                <h4 class="text-[10px] font-black uppercase text-slate-600 group-hover:text-slate-400 tracking-[0.2em] transition-colors">${st.label}</h4>
                            </div>
                        </div>
                    `;
    }).join('')}
            </div>
        </div>
    `;

    // Trigger fill-up animation
    setTimeout(() => {
        const bars = container.querySelectorAll('.stat-bar');
        bars.forEach(bar => {
            bar.style.height = bar.dataset.target;
        });
    }, 100);
}

function renderAdvancedStats(s) {
    const container = document.getElementById('advancedStats');
    const adv = [
        { label: 'Usage Percentage', val: s.usage_pct, suffix: '%', icon: 'speed', desc: 'Efficiency of player possessions' },
        { label: 'True Shooting', val: s.ts_pct, isPct: true, icon: 'track_changes', desc: 'Shooting efficiency (FT, 2P, 3P)' },
        { label: 'Eff. FG Percentage', val: s.efg_pct, isPct: true, icon: 'adjust', desc: 'Value of 3PT field goals' },
        { label: 'Offensive Rating', val: s.ortg, icon: 'trending_up', desc: 'Points per 100 possessions' },
        { label: 'Defensive Rating', val: s.drtg, icon: 'trending_down', desc: 'Points allowed per 100' },
        { label: 'Versatility Index', val: s.vi, icon: 'extension', desc: 'Overall statistical density' }
    ];

    container.innerHTML = adv.map(st => `
        <div class="group p-8 bg-surface-dark border-2 border-slate-800 rounded-3xl transition-all hover:border-primary hover:shadow-2xl hover:shadow-black/60 relative overflow-hidden">
            <div class="absolute top-0 right-0 p-4 opacity-5 group-hover:opacity-20 transition-opacity">
                <span class="material-symbols-outlined text-5xl">${st.icon}</span>
            </div>
            
            <div class="flex items-start gap-8 relative z-10 mb-8">
                <div class="size-16 rounded-2xl bg-slate-800/80 border border-slate-700 flex items-center justify-center group-hover:border-primary group-hover:bg-primary/10 transition-all flex-shrink-0 shadow-inner">
                    <span class="material-symbols-outlined text-3xl text-slate-500 group-hover:text-primary transition-colors">${st.icon}</span>
                </div>
                <div>
                    <span class="block text-4xl font-black text-white leading-none mb-2 tracking-tighter">
                        ${st.isPct ? (st.val * 100).toFixed(1) + '%' : formatVal(st.val)}
                    </span>
                    <span class="text-[10px] text-slate-500 font-black uppercase tracking-[0.2em] block">${st.label}</span>
                </div>
            </div>
            
            <div class="h-[2px] w-full bg-slate-800 mb-6 group-hover:bg-primary/20 transition-colors"></div>
            
            <p class="text-slate-500 text-xs font-bold uppercase tracking-wide leading-relaxed group-hover:text-slate-300 transition-colors italic">
                ${st.desc}
            </p>
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