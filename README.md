# ☕ Java 8 Installer for Termux

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Termux-blue?style=for-the-badge&logo=android" alt="Platform">
  <img src="https://img.shields.io/badge/Java-8-orange?style=for-the-badge&logo=java" alt="Java 8">
  <img src="https://img.shields.io/badge/Shell-Bash-green?style=for-the-badge&logo=gnu-bash" alt="Bash">
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" alt="License">
</p>

<p align="center">
  <b>🚀 A fast, one-click Java 8 (JDK 8) installer for Termux with a cool animated ASCII banner!</b>
</p>

---

## 📖 Overview

**Java 8 Installer for Termux** is a lightweight bash script that installs **OpenJDK 8** on your Android device via Termux — with **zero manual configuration**. It auto-detects your device architecture, downloads the correct JDK build, extracts it, and sets up all environment variables for you.

Perfect for running:
- 🧩 Minecraft server software (Paper, Spigot, Purpur, etc.)
- 📦 Java-based CLI tools
- 🎓 Learning Java on the go
- ⚙️ Any JAR-based application

---

## ✨ Features

- ✅ **Automatic architecture detection** (`aarch64`, `arm64`, `armhf`, `armv7l`, `arm`)
- 🎨 **Cool animated ASCII banner** with rainbow colors and a spinner
- ⚡ **One-command installation** — no manual JDK setup
- 🔧 **Auto-configures `JAVA_HOME`** in your `.profile`
- 🧹 **Cleans up temporary files** after installation
- 🛡️ **Skips install** if Java is already present
- 📦 Only **~80 MB** download

---

## 📱 Requirements

| Requirement | Details |
|-------------|---------|
| Device | Android (rooted or non-rooted) |
| App | [Termux](https://f-droid.org/en/packages/com.termux/) (F-Droid version recommended) |
| Storage | At least 150 MB free |
| Internet | Required for downloading JDK |
| Architecture | ARM (aarch64 / arm) |

> ⚠️ **Note:** The Play Store version of Termux is outdated. Please use the **F-Droid** version.

---

## 🚀 Installation

### 1. Update Termux packages
```
pkg update && pkg upgrade -y

pkg install wget tar -y
```
### 2. Download the installer

```
git clone https://github.com/Athexblackhat2/java8-termux.git
cd java8-termux
```

- Or download the script directly:
```

wget https://raw.githubusercontent.com/your-username/java8-termux/main/install.sh
```
### 3. Make it executable
```
chmod +x install.sh
```

### 4. Run the installer
```
./install.sh
```

## ⭐ Support
***If this project helped you, please give it a star ⭐ — it really motivates!***

<p align="center"> Made with ❤️ by ATHEX BLACK HAT</p> ```