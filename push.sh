#!/bin/bash
# 一键提交部署脚本
set -e

GIT_NAME="付小飞"
GIT_EMAIL="fuxiaofei@example.com"
COMMIT_MESSAGE="更新游戏: $(date +'%Y-%m-%d %H:%M:%S')"

echo "🚀 开始自动提交..."

git config user.name "$GIT_NAME"
git config user.email "$GIT_EMAIL"

git add .
git commit -m "$COMMIT_MESSAGE"
git push origin main

echo "✅ 提交完成！GitHub CI/CD 正在自动部署，等2分钟刷新网站即可~"
