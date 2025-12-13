#!/bin/bash

# ============================================
# ByteHomeLab - Git Backup Script
# ============================================

set -e

PROJECT_DIR="$HOME/ByteHomeLab"
BRANCH="main"
DATE=$(date +"%Y-%m-%d %H:%M")

cd "$PROJECT_DIR" || exit 1

echo "🔍 Verificando mudanças no ByteHomeLab..."

# Atualiza index respeitando .gitignore
git add -A

# Verifica se há algo para commitar
if git diff --cached --quiet; then
  echo "✅ Nenhuma alteração para backup."
  exit 0
fi

echo "📦 Criando commit de backup..."

git commit -m "backup: homelab config update ($DATE)"

echo "🚀 Enviando para o GitHub..."

git push origin "$BRANCH"

echo "✅ Backup concluído com sucesso!"

