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
bash <(curl -s https://raw.githubusercontent.com/thvie/thvieidlebot/main/install.sh)
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
Eğer Discord’da log almak istersen, `config/webhook.json` dosyasına webhook URL'ni gir:

```json
{
  "url": "https://discord.com/api/webhooks/.../..."
}
```

### 3️⃣ Başlat!
```bash
python3 main.py
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

---

# 🇬🇧 thvieidlebot – Steam Multi-Account Idling Bot

Hello gamer 😎  
This repository contains a fully automated, multi-account Steam idling bot to simulate playtime easily and efficiently.

### 🚀 Features
- 🎮 Supports unlimited Steam accounts simultaneously
- 🛑 Automatically stops idling when real gameplay is detected
- 🔔 Discord webhook support for activity logs
- 🧙 One-command installation (`install.sh`)
- 🔐 Steam Guard support (shared_secret-based)
- 📝 JSON config – easy to use and edit

---

## 🔧 Installation (Debian-based systems)
```bash
bash <(curl -s https://raw.githubusercontent.com/thvie/thvieidlebot/main/install.sh)
```

---

## ⚙️ Usage

### 1️⃣ Configure Accounts
Edit the `config/steam_accounts.json` file:

```json
[
  {
    "username": "yourusername1",
    "password": "yourpassword1",
    "shared_secret": "steamguard_secret",
    "games": [730, 570]
  },
  {
    "username": "yourusername2",
    "password": "yourpassword2",
    "shared_secret": "steamguard_secret",
    "games": [440]
  }
]
```

> 🔒 `shared_secret` is required for Steam Guard auto-login codes.

### 2️⃣ (Optional) Set Up Discord Webhook
```json
{
  "url": "https://discord.com/api/webhooks/.../..."
}
```

### 3️⃣ Run the Bot!
```bash
python3 main.py
```

---

## ❓ FAQ

**Q: Will it stop fake idling if I open a real game?**  
🅰️ Yes! The bot pauses fake idling and resumes when you're done.

**Q: How do I get my `shared_secret`?**  
🅰️ You can extract it from `.maFile` JSONs using **ASF** or **SteamDesktopAuthenticator**.

---

## 🤝 Contributions Welcome
Feel free to open PRs to add new features, improve functionality, or fix bugs. 🎉

---

**Made with ❤️ by [thvie](https://github.com/thvie)**  
Happy idling! 🕹️
