# First Game

A small 2D platformer made in the **Godot Engine**. Run, jump across platforms, collect coins, and avoid the slimes.

## Gameplay

- Control a knight through a pixel-art level.
- Collect coins to raise your score. The counter shows how many you have.
- Touch a slime or fall into the kill zone and you die. The game slows down briefly, then the level restarts.
- Slimes patrol back and forth on their platforms and turn around when they hit a wall.

## Controls

| Action     | Keys                    |
|------------|-------------------------|
| Move left  | `A` or `Left Arrow`     |
| Move right | `D` or `Right Arrow`    |
| Jump       | `Space`                 |

## Getting Started

### Requirements

- [Godot 4.x](https://godotengine.org/download) (the project was last saved with Godot 4.7, using the **GL Compatibility** renderer)

### Run the game

1. Clone the repository:
   ```
   git clone https://github.com/USER/REPO.git
   ```
2. Open Godot and click **Import**.
3. Select the `project.godot` file from the cloned folder.
4. Press **F5** (or the Play button) to run.

The first time you open it, Godot will re-import the assets and generate the `.godot/` cache folder. This is normal.

## Project Structure

```
.
├── assets/
│   ├── fonts/      # Pixel Operator 8 fonts
│   ├── music/      # Background music
│   ├── sounds/     # Sound effects (jump, coin, hurt, explosion, etc.)
│   └── sprites/    # Knight, slimes, coins, tilesets, platforms
├── scripts/        # Game logic (coin, slime, killzone, game manager)
├── sences/         # Scenes (game, player, slime, coin, platform, music, killzone)
├── default_bus_layout.tres
├── icon.svg
└── project.godot
```

### Main scripts

| Script                  | Purpose                                                       |
|-------------------------|---------------------------------------------------------------|
| `sences/player.gd`      | Player movement, jumping, sprite flipping and animations      |
| `scripts/slime.gd`      | Slime patrol AI using left/right raycasts                     |
| `scripts/coin.gd`       | Coin pickup, adds a point and plays the pickup animation      |
| `scripts/game_manager.gd` | Tracks and displays the score                               |
| `scripts/killzone.gd`   | Handles death, slow motion and level restart                  |

The `Music` scene is set up as an autoload so the background music keeps playing across restarts.

## Credits

Replace or confirm these with the actual sources of your assets:

- Engine: [Godot](https://godotengine.org)
- Sprites, sounds and music: add the artist and license here
- Font: Pixel Operator 8, add the author and license here

## License

Add a license for your code here (for example MIT), and check the licenses of any third-party assets before redistributing.
