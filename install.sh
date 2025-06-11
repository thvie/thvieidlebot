#!/bin/bash

echo "🔧 Steam Idle Bot kurulumu başlıyor... / Steam Idle Bot installation starting..."

# Root kontrolü / Check for root
if [ "$(id -u)" -ne 0 ]; then
  echo "⚠️ Lütfen bu scripti root olarak çalıştır (sudo ile)."
  echo "⚠️ Please run this script as root (with sudo)."
  exit 1
fi

# Python ve Git kurulumu / Installing Python and Git
echo "📦 Gereksinimler yükleniyor... / Installing dependencies..."
apt update && apt install -y python3 python3-pip git

# Daha önce varsa eski klasörü temizle / Remove old folder if exists
if [ -d "thvieidlebot" ]; then
  echo "📁 Var olan 'thvieidlebot' klasörü siliniyor... / Removing existing 'thvieidlebot' folder..."
  rm -rf thvieidlebot
fi

# GitHub'dan repo çek / Clone the repository
echo "📥 GitHub'dan repo indiriliyor... / Cloning repository from GitHub..."
git clone https://github.com/thvie/thvieidlebot.git
cd thvieidlebot

# Python kütüphanelerini yükle / Install Python dependencies
if [ -f requirements.txt ]; then
  echo "🐍 Python bağımlılıkları yükleniyor... / Installing Python dependencies..."
  pip3 install -r requirements.txt
else
  echo "❌ requirements.txt bulunamadı! / File 'requirements.txt' not found!"
  exit 1
fi

# Kurulum tamamlandı / Installation complete
echo ""
echo "✅ Kurulum tamamlandı! / Installation complete!"
echo ""
echo "🚀 Botu başlatmak için: / To start the bot:"
echo "---------------------------------------------"
echo "cd thvieidlebot"
echo "python3 main.py"
echo "---------------------------------------------"
