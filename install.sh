#!/bin/bash
echo "🔧 Bağımlılıklar kuruluyor..."
apt update && apt install -y python3-pip screen
pip3 install steam

echo "✅ Kurulum tamamlandı. Botu çalıştırmak için:"
echo "screen -S idle python3 idlebot.py"