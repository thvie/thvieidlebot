import steam.webauth as wa
import json
import time

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