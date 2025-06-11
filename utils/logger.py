import requests
import datetime
import os

def get_webhook_url():
    try:
        with open("webhook.txt", "r") as f:
            return f.read().strip()
    except FileNotFoundError:
        print("❌ Webhook dosyası (webhook.txt) bulunamadı.")
        return None

def send_log(message_tr: str, message_en: str):
    webhook_url = get_webhook_url()
    if not webhook_url:
        return

    timestamp = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    content = f"[{timestamp}]\n🇹🇷 {message_tr}\n🇬🇧 {message_en}"

    try:
        requests.post(webhook_url, json={"content": content})
    except Exception as e:
        print(f"❌ Discord log gönderilemedi: {e}")
