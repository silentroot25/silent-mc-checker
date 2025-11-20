<div align="center">

# ⛏ SilentRoot MC Checker

<img src="https://ik.imagekit.io/3xnpqon35/silentroot.jpg" alt="SilentRoot Logo" width="200"/>

![Python](https://img.shields.io/badge/python-3.8+-blue)
![Status](https://img.shields.io/badge/status-active-success)

## INFO
<img src="https://img.shields.io/github/downloads/silentroot25/silent-mc-checker/total?style=flat">
<img src="https://img.shields.io/github/stars/silentroot25/silent-mc-checker?style=flat">
<img src="https://img.shields.io/github/forks/silentroot25/silent-mc-checker?style=flat">

**The Ultimate Minecraft Account Checker** with advanced ban detection, comprehensive statistics, and beautiful UI

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Configuration](#-configuration) • [Support](#-support)

---

</div>

## 🌟 What's New in MC Edition

### 🎨 **Enhanced UI**
- **Modern Boxed Design** - Beautiful cyan-bordered interface
- **Real-time Statistics** - Live CPM, ETA, and progress tracking
- **Dual Screen Modes** - Compact (CUI) and Detailed (Log) views
- **Accurate Progress Bar** - Sub-character precision with smooth animations
- **Smart ETA Calculation** - Weighted algorithm for precise time estimates

### 🔍 **Improved Ban Detection**
- **Separate Reason Field** - Hypixel ban reasons now display in dedicated field
- **Enhanced Parsing** - Better extraction of temporary block reasons
- **Version Detection** - Identifies incompatible Minecraft versions with suggestions
- **Multi-Server Support** - Hypixel + DonutSMP ban checking

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

#### Webhook Features
- **Rich Discord Embeds**
- **Spoiler-Protected Credentials**
- **Account Skin Thumbnails**
- **Organized Field Layout**
- **NEW: Separate Ban Reason Field**

---

## 🚀 Installation

### Prerequisites
- **Python 3.8+** (Download from [python.org](https://python.org))
- **Windows/Linux/MacOS**
- **Internet Connection**

### Quick Start

```bash
# 1. Clone or download the repository
cd "silent-mc-checker/SilentRoot MC Checker"

# 2. Install dependencies
setup.bat

# 3. Run the checker
run.bat 
```

---

### 2. **Configure Settings**

#### Thread Recommendations
- **Proxyless**: 1-10 threads (avoid rate limits)
- **With Proxies**: 10-200 threads (depends on quality)
- **Premium Proxies**: 200-500 threads

#### Proxy Types
1. **HTTP/HTTPS** - Standard web proxies
2. **SOCKS4** - Basic SOCKS protocol
3. **SOCKS5** - Advanced SOCKS with auth
4. **None** - Direct connection (proxyless)
5. **Auto Scraper** - Automatic proxy fetching

#### Screen Modes
- **[1] CUI (Compact)** - Clean, minimal interface
- **[2] Log (Detailed)** - Comprehensive statistics view


### 3. **Run the Checker**
```bash
run.bat
```

Follow the prompts:
1. Enter thread count (1-500)
2. Select proxy type (1-5)
3. Select screen mode (1-2)
4. Choose combo file
5. (Optional) Choose proxy file

---

## ⚙️ Configuration

### Webhook Setup

Edit `silentmain.py` around **lines 160-175**:

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

## 🎯 Advanced Features

### 🔄 **Auto Retry System**
- Smart retry logic based on thread count
- Prevents infinite loops
- Adjustable max retries (3-6 based on threads)

### 🌐 **Proxy Management**
- Auto proxy scraping from multiple sources
- Proxy rotation on failures
- Separate ban-check proxies
- SOCKS5 support for Hypixel ban checks

### 📊 **Analytics Export**
- JSON export of all statistics
- Account type breakdown
- Ban status summary
- Performance metrics

### 🍪 **Cookie Export**
- Saves session cookies for reuse
- Organized by account type
- Compatible with browser extensions

---

## 🐛 Troubleshooting

<details>
<summary><b>Webhook not receiving messages</b></summary>

- Verify webhook URLs are correct
- Check Discord webhook permissions
- Enable screen mode [2] for debugging
- Check `logs.txt` for errors
</details>

<details>
<summary><b>Ban check stuck or slow</b></summary>

- Use SOCKS5 proxies for ban checks
- Enable auto proxy scraping
- Reduce thread count
- Check proxy quality
</details>

<details>
<summary><b>High error rate</b></summary>

- Use better quality proxies
- Reduce thread count
- Enable retry logic
- Check combo file format
</details>

<details>
<summary><b>CPM too low</b></summary>

- Increase thread count
- Use faster proxies
- Enable proxy scraping
- Check internet connection
</details>

---

## 📊 Performance Metrics

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

**Made by SilentRoot Team**

</div>

---

## ⚠️ Disclaimer

This tool is for **educational purposes only**. 

- ✅ If you use my code **So please give some credits to Me**
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
- More Tools Reveal First in Discord

---

<div align="center">

### ⭐ If you find this useful, please star the repository!
### SUPPORT US : 

- LTC - LfmZJoJt6R2dM3TqWu27PzQfRn9T9ozPfD
- BTC - bc1q2gju5zc9jnn0zhfhdhza4vxm5zft26eew55jju
- USDT - 0x6D186DB1D0C90a66835E3706D3620Cbb04e30113


**SilentRoot MC Checker** - The Ultimate Minecraft Account Checker

</div>
