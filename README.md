# Simple Commands
![ContentDB](https://content.minetest.net/packages/enchant97/simple_commands/shields/downloads/)
![GitHub license](https://img.shields.io/github/license/enchant97/minetest_simple_commands)
![GitHub issues](https://img.shields.io/github/issues/enchant97/minetest_simple_commands)

A [minetest](https://www.minetest.net/) mod for adding simple
commands that are missing within the game.

If you believe a command should be added
create a GitHub issue and create a pull
request with the addition linking to the issue
if you can implement it.

## Chat Commands

### Time

| Name     | Privs   | Desc                 |
|:---------|:--------|:---------------------|
| day      | settime | set time to day      |
| midday   | settime | set time to midday   |
| night    | settime | set time to night    |
| midnight | settime | set time to midnight |

### Player

| Name     | Privs        | Desc                                | Requirements |
|:---------|:-------------|:------------------------------------|:-------------|
| exjump   | enhancements | Extended jump height                |              |
| lowgrav  | enhancements | Low gravity                         |              |
| speed    | enhancements | Speed increase                      |              |
| immortal | enhancements | Infinite health                     |              |
| air      | enhancements | Give the player air                 |              |
| feed     | enhancements | Fill the players hunger             | mineclone2   |
| antidote | enhancements | Stops player being poisoned         | mineclone2   |
| rephand  | enhancements | Repair the item in the players hand |              |
| hp       | enhancements | Give the player health (hp)         |              |
| pos      |              | Current player posistion            |              |

## Config
You can change the default multipliers for speed, lowgrav and exjump in the minetest settings under `mods > simple_commands`.

---

## License
Copyright (C) 2021  Leo Spratt

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
