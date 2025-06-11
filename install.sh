#!/bin/bash

echo "🔧 Steam Idle Bot kurulumu başlıyor..."

# Root kontrolü
if [ "$(id -u)" -ne 0 ]; then
  echo "⚠️ Lütfen bu scripti root olarak çalıştır (sudo ile)."
  exit 1
fi

# Python ve Git kurulumu
echo "📦 Gereksinimler yükleniyor..."
apt update && apt install -y python3 python3-pip git

# Bot klasörü varsa silinip tekrar klonlanır
if [ -d "thvieidlebot" ]; then
  echo "📁 Var olan 'thvieidlebot' klasörü siliniyor..."
  rm -rf thvieidlebot
fi

echo "📥 GitHub'dan repo indiriliyor..."
git clone https://github.com/thvie/thvieidlebot.git
cd thvieidlebot

# Gerekli Python kütüphaneleri kuruluyor
if [ -f requirements.txt ]; then
  echo "🐍 Python bağımlılıkları yükleniyor..."
  pip3 install -r requirements.txt
else
  echo "❌ requirements.txt bulunamadı!"
  exit 1
fi

echo "✅ Kurulum tamamlandı! Botu başlatmak için:"
echo "---------------------------------------------"
echo "cd thvieidlebot"
echo "python3 main.py"
echo "---------------------------------------------"