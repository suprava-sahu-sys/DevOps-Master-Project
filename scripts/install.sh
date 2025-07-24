#!/bin/bash
echo "✅ Running install.sh"
cd /home/ec2-user/myapp
npm install --production || true
chmod +x scripts/install.sh
