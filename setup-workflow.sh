#!/bin/bash

# 🔄 Mac + iPhone 開発ワークフロー セットアップスクリプト
# 毎日の開発開始時に実行するコマンド

echo "🔄 Mac + iPhone 開発ワークフロー セットアップ"
echo "================================================"

# 現在のブランチを表示
echo "📍 現在のブランチ:"
git branch --show-current

# 作業前のチェック
echo ""
echo "🔍 作業前のチェック..."
echo "Git status:"
git status --short

# 最新の変更を取得
echo ""
echo "📥 最新の変更を取得中..."
echo "Main branch から pull:"
git checkout main
git pull origin main

echo "Develop branch から pull:"
git checkout develop
git pull origin develop

# ブランチの一覧を表示
echo ""
echo "🌿 利用可能なブランチ:"
git branch -a

echo ""
echo "✅ セットアップ完了！"
echo ""
echo "🚀 次のステップ:"
echo "1. 新しい機能を開発する場合:"
echo "   git checkout -b feature/新機能名"
echo ""
echo "2. 既存の機能を続ける場合:"
echo "   git checkout feature/既存機能名"
echo ""
echo "3. iPhone で開発する場合:"
echo "   git checkout feature/機能名"
echo "   git pull origin feature/機能名"
echo ""
echo "📱 iPhone開発後は:"
echo "   git add ."
echo "   git commit -m 'fix: モバイルでの修正'"
echo "   git push origin feature/機能名"

echo ""
echo "🔗 便利なリンク:"
echo "- GitHub Repository: https://github.com/babadocomodake/hello-world"
echo "- Workflow Guide: ./github-workflow-guide.md"