# 🎮 thvieidlebot – Steam Çoklu Hesap Idle Botu

**[English below 🇬🇧👇]**

Merhaba! 👋  
Bu repo, birden fazla Steam hesabında **oyun süresi simülasyonu (idling)** yapmak isteyenler için geliştirilmiş, kolay kurulumlu ve tam otomatik bir **Steam Idle Bot** içerir.

### 🚀 Özellikler
- 🔁 Sınırsız sayıda Steam hesabını aynı anda çalıştırır
- 🎯 Gerçek oyun oynanıyorsa fake idling’i durdurur
- 🔔 Discord webhook ile durumları loglar (başladı, durdu, hata vb.)
- 🛠️ Tek komutla kurulum (`install.sh`)
- 🔒 Steam Guard desteği
- 📊 JSON tabanlı config ile kolay yapılandırma

---

## 🔧 Kurulum (Debian tabanlı sistemler için)
```bash
bash <(curl -s https://raw.githubusercontent.com/thvie/thvieidlebot/master/install.sh)
```

---

## ⚙️ Kullanım

### 1️⃣ Hesapları Ayarla
`config/steam_accounts.json` içine şu şekilde bilgileri gir:

```json
[
  {
    "username": "kullaniciadi1",
    "password": "sifre1",
    "shared_secret": "mobilguard_shared_secret",
    "games": [730, 570]
  },
  {
    "username": "kullaniciadi2",
    "password": "sifre2",
    "shared_secret": "mobilguard_shared_secret",
    "games": [440]
  }
]
```

🛑 *`shared_secret` bilgisi mobil Steam Guard için zorunludur.*  
📌 Bu bilgiyi **maFile** ya da **ASF** gibi araçlarla alabilirsin.

### 2️⃣ Discord Webhook (isteğe bağlı)
Eğer Discord’da log almak istersen, `config/webhook.txt` dosyasına webhook URL'ni gir:

```json
{
  "url": "https://discord.com/api/webhooks/.../..."
}
```

### 3️⃣ Başlat!
```bash
python3 idlebot.py
```

---

## ❓ Sık Sorulanlar

**S: Gerçek oyun açarsam fake idling durur mu?**  
🅰️ Evet, bot bunu algılar ve duraklatır. Oyun kapanınca devam eder.

**S: `shared_secret` nedir, nereden alırım?**  
🅰️ Bu, Steam mobil guard tarafından üretilen koddur. `maFiles` klasöründeki `.maFile` JSON'dan bulabilirsin.

---

## 👨‍💻 Katkıda Bulun
PR’lara açığım! Yeni özellikler eklemek ya da hataları düzeltmek istersen katkıda bulunabilirsin. ❤️

---

# 🇬🇧 thvieidlebot – Steam Multi-Account Idle Bot

Hello! 👋  
This repository contains an easy-to-install and fully automated **Steam Idle Bot** for simulating **playtime (idling)** on multiple Steam accounts.

### 🚀 Features
- 🔁 Runs an unlimited number of Steam accounts simultaneously
- 🎯 Detects real gameplay and pauses fake idling automatically
- 🔔 Logs events (start, stop, error, etc.) via Discord webhook
- 🛠️ One-command installation (`install.sh`)
- 🔒 Supports Steam Guard
- 📊 Easy configuration with JSON-based config file

---

## 🔧 Installation (for Debian-based systems)
```bash
bash <(curl -s https://raw.githubusercontent.com/thvie/thvieidlebot/master/install.sh)
```

---

## ⚙️ Usage

### 1️⃣ Configure Your Accounts
Enter your account details into `config/steam_accounts.json` like this:

```json
[
  {
    "username": "yourusername1",
    "password": "yourpassword1",
    "shared_secret": "mobileguard_shared_secret",
    "games": [730, 570]
  },
  {
    "username": "yourusername2",
    "password": "yourpassword2",
    "shared_secret": "mobileguard_shared_secret",
    "games": [440]
  }
]
```

🛑 *The `shared_secret` is required for mobile Steam Guard authentication.*  
📌 You can obtain it using tools like **maFile** or **ASF**.

### 2️⃣ (Optional) Discord Webhook
If you want to log activity in Discord, enter your webhook URL into the `config/webhook.txt` file:

```json
{
  "url": "https://discord.com/api/webhooks/.../..."
}
```

### 3️⃣ Start the Bot!
```bash
python3 idlebot.py
```

---

## ❓ Frequently Asked Questions

**Q: Will fake idling stop when I open a real game?**  
🅰️ Yes, the bot detects this and automatically pauses. It resumes once the game is closed.

**Q: What is `shared_secret` and how do I get it?**  
🅰️ This is the Steam Mobile Guard key. You can find it inside `.maFile` JSONs using tools like **maFile** or **ASF**.

---

## 👨‍💻 Contribute
Pull requests are welcome! You can contribute by adding new features or fixing bugs. ❤️

---

**Made with ❤️ by [thvie](https://github.com/thvie)**  
Happy idling! 🕹️