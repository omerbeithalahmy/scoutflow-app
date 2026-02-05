const teamExtraData = {
    "ATL": { conf: "EAST", div: "Southeast", nbaId: 1610612737, color: "#E03A3E" },
    "BOS": { conf: "EAST", div: "Atlantic", nbaId: 1610612738, color: "#007A33" },
    "CLE": { Rock: "EAST", div: "Central", nbaId: 1610612739, color: "#860038" },
    "NOP": { conf: "WEST", div: "Southwest", nbaId: 1610612740, color: "#0C2340" },
    "CHI": { conf: "EAST", div: "Central", nbaId: 1610612741, color: "#CE1141" },
    "DAL": { conf: "WEST", div: "Southwest", nbaId: 1610612742, color: "#00538C" },
    "DEN": { conf: "WEST", div: "Northwest", nbaId: 1610612743, color: "#0E2240" },
    "GSW": { conf: "WEST", div: "Southwest", nbaId: 1610612744, color: "#1D428A" },
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
    initUserDisplay();
    const urlParams = new URLSearchParams(window.location.search);
    const teamId = urlParams.get('id');
    if (!teamId) return;
    try {
        const teamRes = await fetch(`http://localhost:8000/teams/${teamId}`);
        const team = await teamRes.json();
        updateUIHeader(team);
        const playersRes = await fetch(`http://localhost:8000/teams/${teamId}/players`);
        const players = await playersRes.json();
        renderPlayers(players);
    } catch (err) {
        console.error("Error fetching team data:", err);
    }
}

function updateUIHeader(team) {
    const extra = teamExtraData[team.abbreviation] || { nbaId: 0, color: "#111", conf: "NBA", div: "N/A" };
    document.documentElement.style.setProperty('--team-color', extra.color);
    const logoImg = document.getElementById('teamLogo');
    if (logoImg && extra.nbaId !== 0) {
        logoImg.src = `https://cdn.nba.com/logos/nba/${extra.nbaId}/primary/L/logo.svg`;
        logoImg.style.display = 'block';
    }
    const cityEl = document.getElementById('teamCity');
    if (cityEl) cityEl.innerText = team.city.toUpperCase();
    const nameEl = document.getElementById('teamName');
    if (nameEl) {
        nameEl.innerText = team.name.toUpperCase();
        nameEl.style.color = extra.color;
    }
    const metaEl = document.getElementById('teamMeta');
    if (metaEl) {
        metaEl.innerText = `${extra.conf}ERN CONFERENCE • ${extra.div.toUpperCase()}`;
    }
}

async function renderPlayers(players) {
    const container = document.getElementById('dynamicRoster');
    if (!container) return;
    const userId = localStorage.getItem('userId');
    let followStatusMap = {};
    if (userId) {
        try {
            const followStatusPromises = players.map(p =>
                fetch(`http://localhost:8000/users/${userId}/followed-players/${p.id}/status`)
                    .then(res => res.json())
                    .then(data => ({ playerId: p.id, isFollowing: data.is_following }))
                    .catch(() => ({ playerId: p.id, isFollowing: false }))
            );
            const followStatuses = await Promise.all(followStatusPromises);
            followStatuses.forEach(status => {
                followStatusMap[status.playerId] = status.isFollowing;
            });
        } catch (err) {
            console.error("Error fetching follow statuses:", err);
        }
    }
    let html = '<div class="players-grid">';
    players.forEach(p => {
        const nameParts = p.full_name.trim().split(/\s+/);
        const initials = nameParts.length >= 2
            ? (nameParts[0][0] + nameParts[nameParts.length - 1][0]).toUpperCase()
            : nameParts[0][0].toUpperCase();
        const stats = p.latest_stats;
        const formatStat = (val) => (val === null || val === undefined || val === 0) ? "N/A" : val.toFixed(1);
        const isFollowed = followStatusMap[p.id] || false;
        const heartClass = isFollowed ? 'fa-solid fa-heart followed' : 'fa-regular fa-heart';
        html += `
            <div class="player-card" onclick="navigateToPlayer(${p.id})">
              <div class="card-left">
                <div class="player-num-box">${initials}</div>
                <div class="player-info-text">
                  <span class="p-pos">NBA PLAYER</span>
                  <h3 class="p-name">${p.full_name.toUpperCase()}</h3>
                  <span class="p-phys">2025-26 SEASON</span>
                </div>
              </div>
              <div class="card-right">
                <div class="stat-item"><span class="stat-val">${formatStat(stats?.avg_points)}</span><span class="stat-lbl">PPG</span></div>
                <div class="stat-item"><span class="stat-val">${formatStat(stats?.avg_rebounds)}</span><span class="stat-lbl">RPG</span></div>
                <div class="stat-item"><span class="stat-val">${formatStat(stats?.avg_assists)}</span><span class="stat-lbl">APG</span></div>
                <div class="card-icons">
                  <i class="${heartClass}" data-player-id="${p.id}" onclick="handleFollow(event, ${p.id})"></i>
                  <i class="fa-solid fa-arrow-right"></i>
                </div>
              </div>
            </div>`;
    });
    html += '</div>';
    container.innerHTML = html;
    const rosterCountEl = document.getElementById('rosterCount');
    if (rosterCountEl) rosterCountEl.innerText = `(${players.length} PLAYERS)`;
}

function navigateToPlayer(playerId) {
    window.location.href = `../player/index.html?id=${playerId}`;
}

async function handleFollow(event, playerId) {
    event.stopPropagation();
    const userId = localStorage.getItem('userId');
    if (!userId) {
        alert('Please log in to follow players');
        return;
    }
    const heartIcon = event.target;
    const isCurrentlyFollowed = heartIcon.classList.contains('followed');
    try {
        if (isCurrentlyFollowed) {
            const response = await fetch(`http://localhost:8000/users/${userId}/followed-players/${playerId}`, {
                method: 'DELETE'
            });
            if (response.ok) {
                heartIcon.classList.remove('fa-solid', 'followed');
                heartIcon.classList.add('fa-regular');
                console.log(`Unfollowed player ${playerId}`);
            } else {
                throw new Error('Failed to unfollow player');
            }
        } else {
            const response = await fetch(`http://localhost:8000/users/${userId}/followed-players/${playerId}`, {
                method: 'POST'
            });
            if (response.ok) {
                heartIcon.classList.remove('fa-regular');
                heartIcon.classList.add('fa-solid', 'followed');
                console.log(`Followed player ${playerId}`);
            } else {
                const errorData = await response.json();
                if (errorData.detail === 'Already following this player') {
                    heartIcon.classList.remove('fa-regular');
                    heartIcon.classList.add('fa-solid', 'followed');
                } else {
                    throw new Error('Failed to follow player');
                }
            }
        }
    } catch (error) {
        console.error('Error toggling follow status:', error);
        alert('An error occurred. Please try again.');
    }
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
        logoutBtn.onclick = (e) => {
            e.preventDefault();
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

document.addEventListener('DOMContentLoaded', initDynamicPage);