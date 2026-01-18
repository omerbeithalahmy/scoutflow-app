// Team mapping data (reused from other pages)
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

/**
 * Initialize the Archive page
 */
async function initArchivePage() {
    initUserDisplay();

    const userId = localStorage.getItem('userId');
    if (!userId) {
        console.error('No user ID found in localStorage');
        showEmptyState();
        return;
    }

    await fetchFollowedPlayers(userId);
}

/**
 * Fetch followed players from the API
 */
async function fetchFollowedPlayers(userId) {
    try {
        const res = await fetch(`http://localhost:8000/users/${userId}/followed-players`);

        if (!res.ok) {
            throw new Error('Failed to fetch followed players');
        }

        const players = await res.json();

        if (players.length === 0) {
            showEmptyState();
        } else {
            renderWatchlist(players);
        }

        updatePlayerCount(players.length);
    } catch (err) {
        console.error('Error fetching followed players:', err);
        showEmptyState();
    }
}

/**
 * Show empty state (no players followed)
 */
function showEmptyState() {
    const emptyState = document.getElementById('emptyState');
    const watchlistContainer = document.getElementById('watchlistContainer');

    if (emptyState) emptyState.style.display = 'flex';
    if (watchlistContainer) watchlistContainer.style.display = 'none';
}

/**
 * Render the watchlist with followed players
 */
function renderWatchlist(players) {
    const emptyState = document.getElementById('emptyState');
    const watchlistContainer = document.getElementById('watchlistContainer');

    if (emptyState) emptyState.style.display = 'none';
    if (watchlistContainer) {
        watchlistContainer.style.display = 'flex';
        watchlistContainer.innerHTML = '';

        players.forEach(player => {
            const playerRow = createPlayerRow(player);
            watchlistContainer.appendChild(playerRow);
        });
    }
}

/**
 * Create a player row element
 */
function createPlayerRow(player) {
    const row = document.createElement('div');
    row.className = 'player-row';

    // Extract player data
    const teamAbbr = player.team_abbreviation || 'NBA';
    const teamData = teamExtraData[teamAbbr] || { nbaId: 0, color: '#111' };
    const teamLogoUrl = `https://cdn.nba.com/logos/nba/${teamData.nbaId}/primary/L/logo.svg`;

    const teamName = player.team_name || 'NBA';

    // Get stats from latest_stats
    const stats = player.latest_stats || {};
    const ppg = stats.avg_points !== undefined && stats.avg_points !== null ? stats.avg_points.toFixed(1) : '0.0';
    const rpg = stats.avg_rebounds !== undefined && stats.avg_rebounds !== null ? stats.avg_rebounds.toFixed(1) : '0.0';
    const apg = stats.avg_assists !== undefined && stats.avg_assists !== null ? stats.avg_assists.toFixed(1) : '0.0';

    // Extract jersey number or use initials
    const jerseyDisplay = extractJerseyNumber(player.full_name);

    row.innerHTML = `
        <div class="player-jersey">
            <span>${jerseyDisplay}</span>
        </div>
        
        <div class="player-info">
            <span class="player-position-team">${teamName.toUpperCase()}</span>
            <h3 class="player-name">${player.full_name}</h3>
        </div>
        
        <div class="player-stats">
            <div class="stat-item">
                <span class="stat-value">${ppg}</span>
                <span class="stat-label">PPG</span>
            </div>
            <div class="stat-item">
                <span class="stat-value">${rpg}</span>
                <span class="stat-label">RPG</span>
            </div>
            <div class="stat-item">
                <span class="stat-value">${apg}</span>
                <span class="stat-label">APG</span>
            </div>
        </div>
        
        <div class="player-actions">
            <button class="unfollow-btn" onclick="unfollowPlayer(event, ${player.id})" title="Unfollow">
                <i class="fa-solid fa-heart"></i>
            </button>
            <i class="fa-solid fa-arrow-right-long arrow-icon"></i>
        </div>
    `;

    // Add click handler to navigate to player page (except for unfollow button)
    row.addEventListener('click', (e) => {
        if (!e.target.closest('.unfollow-btn')) {
            window.location.href = `../player/index.html?id=${player.id}`;
        }
    });

    return row;
}

/**
 * Extract jersey number or initials from player name
 */
function extractJerseyNumber(fullName) {
    // For now, use initials (e.g., "Jayson Tatum" -> "JT")
    // In a real scenario, you'd have jersey numbers in the database
    const nameParts = fullName.trim().split(/\s+/);

    if (nameParts.length >= 2) {
        return nameParts[0][0] + nameParts[nameParts.length - 1][0];
    } else if (nameParts.length === 1) {
        return nameParts[0].substring(0, 2).toUpperCase();
    }
    return 'XX';
}

/**
 * Unfollow a player
 */
async function unfollowPlayer(event, playerId) {
    event.stopPropagation(); // Prevent row click

    const userId = localStorage.getItem('userId');
    if (!userId) {
        console.error('No user ID found');
        return;
    }

    try {
        const res = await fetch(`http://localhost:8000/users/${userId}/followed-players/${playerId}`, {
            method: 'DELETE'
        });

        if (!res.ok) {
            throw new Error('Failed to unfollow player');
        }

        // Refresh the watchlist
        await fetchFollowedPlayers(userId);
    } catch (err) {
        console.error('Error unfollowing player:', err);
        alert('Failed to unfollow player. Please try again.');
    }
}

/**
 * Update the player count display
 */
function updatePlayerCount(count) {
    const countElement = document.getElementById('playerCount');
    if (countElement) {
        const plural = count === 1 ? 'PLAYER' : 'PLAYERS';
        countElement.textContent = `${count} ${plural} FOLLOWED`;
    }
}

/**
 * Initialize user display and logout
 */
function initUserDisplay() {
    const userNameDisplay = document.getElementById('userNameDisplay');
    const storedName = localStorage.getItem('userName');

    if (storedName && userNameDisplay) {
        userNameDisplay.textContent = storedName.toUpperCase();
    }

    const logoutBtn = document.querySelector('.logout-btn');
    if (logoutBtn) {
        logoutBtn.onclick = () => {
            localStorage.clear();
            window.location.href = '../auth/index.html';
        };
    }
}

// Initialize on page load
document.addEventListener('DOMContentLoaded', initArchivePage);
