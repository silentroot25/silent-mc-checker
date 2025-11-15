<div align="center">

# ⛏ SilentRoot MC Checker (macOS)

<img src="https://ik.imagekit.io/3xnpqon35/silentroot.jpg" alt="SilentRoot Logo" width="200"/>

![Python](https://img.shields.io/badge/python-3.8+-blue)
![Platform](https://img.shields.io/badge/platform-macOS-lightgrey)
![Status](https://img.shields.io/badge/status-active-success)
![License](https://img.shields.io/badge/license-MIT-blue)

**The Ultimate Minecraft Account Checker** with advanced ban detection, comprehensive statistics, and beautiful UI

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Configuration](#-configuration) • [Support](#-support)

---

</div>

## 🍎 macOS Version

This is the **macOS-optimized version** of SilentRoot MC Checker with full feature parity to the Windows version.

### macOS-Specific Features
- ✅ **Native Terminal Support** - ANSI escape sequences for terminal title
- ✅ **Bash Scripts** - setup.sh and run.sh for easy execution
- ✅ **Python 3 Compatible** - Uses python3 command
- ✅ **Homebrew Friendly** - Easy installation with brew
- ✅ **Universal Binary** - Works on Intel and Apple Silicon (M1/M2/M3)

---

## 🚀 Installation

### Prerequisites
- **Python 3.8+**
- **pip3** (Python package manager)
- **Internet Connection**

### Quick Start

```bash
# 1. Navigate to the Mac folder
cd "Silent Root MC/mac"

# 2. Make scripts executable
chmod +x setup.sh run.sh

# 3. Install dependencies
./setup.sh

# 4. Run the checker
./run.sh
```

### Install Python on macOS

#### Using Homebrew (Recommended)
```bash
# Install Homebrew if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Python 3
brew install python3
```

#### Using Official Installer
Download from [python.org](https://python.org) and install

---

## ✨ Core Features

### 🔐 **Account Verification**
```
✓ Microsoft OAuth Authentication
✓ Xbox Live Token Validation  
✓ Minecraft Profile Access
✓ Account Type Detection (XGP, XGPU, Bedrock)
```

### 🎯 **Advanced Ban Detection**

#### Hypixel Network
- ✅ Multiple server/version combinations
- ✅ Ban duration & ID tracking
- ✅ Permanent & temporary ban detection
- ✅ Version compatibility checking

#### DonutSMP Server
- ✅ Real-time connection testing
- ✅ Ban reason & duration extraction
- ✅ Player statistics for unbanned accounts
- ✅ Money, playtime, shards, level, rank
- ✅ K/D ratio calculation

### 📊 **Statistics Collection**

<table>
<tr>
<td width="50%">

#### 🏆 Hypixel Stats
- Network Level & Rank
- Karma & Playtime
- First/Last Login
- Bedwars Stars

</td>
<td width="50%">

#### 🍩 DonutSMP Stats
- Money/Balance
- Playtime & Shards
- Level & Rank
- Kills & Deaths
- K/D Ratio

</td>
</tr>
</table>

### 📧 **Account Details**
- **Email Access Detection** - MFA (Full) vs SFA (Semi)
- **Password Changeability** - Detects if password can be changed
- **Email Changeability** - Detects if email can be changed
- **Payment Information** - Cards, PayPal, balance
- **Cape Detection** - All cape types including Optifine
- **Name Change Status** - Availability + last change date

### 🌐 **Smart Webhook System**

<div align="center">

| Webhook Type | Trigger | Color |
|-------------|---------|-------|
| 🔴 **Banned** | Hypixel OR DonutSMP ban | Red |
| 🟢 **Unbanned** | Clean accounts | Green |
| 🟡 **Normal** | SFA/MFA/2FA/Other | Yellow |

</div>

---

## ⚙️ Configuration

### Webhook Setup

Edit `silentmain.py` around **lines 177-188**:

```python
# Banned Webhook (Red) - Hypixel OR DonutSMP bans
webhook_url = 'https://discord.com/api/webhooks/YOUR_BANNED_WEBHOOK_HERE'

# Unbanned Webhook (Green) - Clean accounts
webhook_url = 'https://discord.com/api/webhooks/YOUR_UNBANNED_WEBHOOK_HERE'

# Normal Webhook (Yellow) - SFA/MFA/2FA/Other
webhook_url = 'https://discord.com/api/webhooks/YOUR_NORMAL_WEBHOOK_HERE or None'
```

### Config.ini Settings

```ini
[Hypixel]
Name = true
Level = true
First Login = true
Last Login = true
Bedwars Stars = true
Skyblock Coins = true
Ban Check = true

[DonutSMP]
Check = true

[Other]
Access = true
Optifine Cape = true
Export Results = true
```

### Proxy Format

```
# HTTP/HTTPS
ip:port
ip:port:username:password

# SOCKS5
username:password@ip:port
```

---

## 📁 Output Structure

```
results/
└── [timestamp]/
    ├── Hits.txt              # All valid accounts
    ├── MFA.txt               # Full access accounts
    ├── SFA.txt               # Semi access accounts
    ├── 2FA.txt               # Two-factor enabled
    ├── Bad.txt               # Invalid credentials
    ├── Banned.txt            # Hypixel banned
    ├── Unbanned.txt          # Hypixel unbanned
    ├── DonutBanned.txt       # DonutSMP banned
    ├── DonutUnbanned.txt     # DonutSMP unbanned
    ├── Changeable.txt        # Accounts with changeable fields
    └── Cookies/              # Session cookies by type
```

---

## 🐛 Troubleshooting

<details>
<summary><b>Permission denied when running scripts</b></summary>

Make scripts executable:
```bash
chmod +x setup.sh run.sh
```
</details>

<details>
<summary><b>Python command not found</b></summary>

Install Python 3:
```bash
# Using Homebrew
brew install python3

# Or download from python.org
```
</details>

<details>
<summary><b>Module not found errors</b></summary>

Reinstall requirements:
```bash
python3 -m pip install --upgrade -r requirements.txt
```
</details>

<details>
<summary><b>Webhook not receiving messages</b></summary>

- Verify webhook URLs are correct
- Check Discord webhook permissions
- Enable screen mode [2] for debugging
- Check `logs.txt` for errors
</details>

<details>
<summary><b>SSL Certificate Error on macOS</b></summary>

Run the certificate installer:
```bash
/Applications/Python\ 3.*/Install\ Certificates.command
```
</details>

---

## � Prerformance Metrics

| Metric | Value |
|--------|-------|
| **Speed** | 100-300 CPM |
| **Accuracy** | 99%+ |
| **Success Rate** | Depends on combo quality |
| **Thread Support** | 1-500 threads |
| **Proxy Support** | HTTP/SOCKS4/SOCKS5 |

---

## 🔒 Security & Privacy

- ✅ **No External Logging** - All data stays local
- ✅ **Secure OAuth Flow** - Official Microsoft authentication
- ✅ **Spoiler Protection** - Credentials hidden in webhooks
- ✅ **Open Source** - Review the code yourself
- ✅ **Local Processing** - No cloud services used

---

## 👨‍💻 Developer

<div align="center">

**Made by Reaper**

</div>

---

## ⚠️ Disclaimer

This tool is for **educational purposes only**. 

- ✅ If you use my code **So please give credits to Me**
- ❌ Do not use for unauthorized access
- ⚖️ Developers are not responsible for misuse

**Use responsibly and ethically.**

---

## 🤝 Contributing

Contributions are welcome! Feel free to:
- 🐛 Report bugs
- 💡 Suggest features
- 🔧 Submit pull requests
- ⭐ Star the repository

---

## 📞 Support

Need help? Have questions?

- 💬 **Discord**: https://discord.gg/W6dHR47Hn3
- 📖 **Documentation**: This README
- 🐛 **Bug Reports**: GitHub Issues
- More Tools Reveals First in Discord

---

<div align="center">

### ⭐ If you find this useful, please star the repository!
### SUPPORT US : 

- LTC - LfmZJoJt6R2dM3TqWu27PzQfRn9T9ozPfD
- BTC - bc1q2gju5zc9jnn0zhfhdhza4vxm5zft26eew55jju
- USDT - 0x6D186DB1D0C90a66835E3706D3620Cbb04e30113


**SilentRoot MC Checker** - The Ultimate Minecraft Account Checker

</div>
