import steam.webauth as wa
import json
import time
from utils.logger import send_log

with open("config/steamauths.json", "r") as f:
    accounts = json.load(f)["accounts"]

for acc in accounts:
    username = acc["username"]
    password = acc["password"]
    shared_secret = acc["shared_secret"]
    games = acc["games"]

    user = wa.WebAuth(username)
    try:
        user.login(password, twofactor_code=user.generate_twofactor_code(shared_secret))
        print(f"[✓] Giriş yapıldı: {username}")

        for appid in games:
            print(f"  → Idle başlatılıyor: {appid}")
            # Gerçek idle sistemleri burada third-party modüllerle yapılır (örneğin steam.client)
            time.sleep(3)
    except Exception as e:
        print(f"[!] Giriş başarısız {username}: {e}")

    # Bot başlıyor
send_log("Idle bot başlatılıyor...", "Idle bot is starting...")

# Giriş başarılı
send_log(f"{username} hesabı ile giriş yapıldı.", f"Logged in with account {username}.")

# Giriş başarısız
send_log(f"{username} hesabı ile giriş BAŞARISIZ!", f"Login FAILED for account {username}.")

# Gerçek oyun algılandı
send_log(f"{username} gerçek bir oyun oynuyor. Idle durduruldu.",
         f"{username} is playing a real game. Idle paused.")

# Tekrar idle'a dönüldü
send_log(f"{username} idle moda geri döndü.",
         f"{username} returned to idle mode.")
