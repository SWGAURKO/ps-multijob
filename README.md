# ps-multijob

![FiveM](https://img.shields.io/badge/FiveM-Script-orange)
![Framework](https://img.shields.io/badge/Framework-QBCore%20%7C%20Qbox-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A sleek and modern **multi-job system** that allows players to store multiple jobs and switch between them easily.

Compatible with **QBCore** and **Qbox** frameworks.

---

# ✨ Features

* Store and switch between multiple jobs
* Configurable ignored jobs
* Configurable keybind to open the job menu (**Default: J**)
* Configurable max jobs per citizen ID
* Unlimited jobs for players with **admin permission**
* Job whitelist support
* Custom job descriptions
* UI position configurable (**left / right**)
* FontAwesome job icons
* Admin command to remove jobs
* Compatible with **qb-management firing system**
* Full **Qbox support**

---

# 📷 Preview

Modern UI that displays all player jobs and allows instant switching between them.

---

# 📦 Installation

### 1. Download the resource

Clone or download the repository.

### 2. Rename the folder

```
ps-multijob
```

⚠️ **Important:**
Do not change the resource name or the script will not work.

### 3. Import the SQL

Import the following file into your database:

```
database.sql
```

### 4. Add to server.cfg

```
ensure ps-multijob
```

---

# 🧠 Framework Setup

## QBCore

Make sure **qb-core** starts before the script.

```
ensure qb-core
ensure ps-multijob
```

The script will automatically use QBCore functions.

---

## Qbox

Make sure the following resources are started:

```
ensure qbx-core
ensure ox_lib
ensure oxmysql
ensure ps-multijob
```

Example core object:

```lua
local QBCore = exports['qbx-core']:GetCoreObject()
```

Example player object:

```lua
local Player = exports.qbx_core:GetPlayer(source)
```

---

# 🔗 Linking to qb-management (Auto Firing)

To automatically remove a job when a player is fired.

Find this event inside **qb-management**:

```
qb-bossmenu:server:FireEmployee
```

Add the following under the notification message.

Add it in **two places**.

```lua
TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
TriggerEvent('ps-multijob:server:removeJob', target)
```

---

# ⚙️ Usage

## Server Exports

### GetJobs

```lua
local jobs = exports["ps-multijob"]:GetJobs("citizenid")
```

Returns all stored jobs for a player.

---

### AddJob

```lua
exports["ps-multijob"]:AddJob("citizenid", "police", 0)
```

Adds a job to a player.

---

### UpdateJobRank

```lua
exports["ps-multijob"]:UpdateJobRank("citizenid", "police", 3)
```

Updates the player's job grade.

---

### RemoveJob

```lua
exports["ps-multijob"]:RemoveJob("citizenid", "police")
```

Removes a job from the player.

---

# 🛠 Admin Commands

```
/removejob
```

Removes a job from a player.

---



# 👨‍💻 Credits

* xFutte
* Silent
* Jay
* Snipe
* Project Sloth
