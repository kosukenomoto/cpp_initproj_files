#!/usr/bin/env bash
#
# copy_without_git.sh
# 使い方: ./copy_without_git.sh <コピー先ディレクトリ>

set -euo pipefail

### 引数チェック
if [[ $# -ne 1 ]]; then
    echo "Usage: $(basename "$0") <destination_dir>" >&2
    exit 1
fi

dest="$1"

### コピー先を用意
mkdir -p "$dest"

### .git を除外してコピー
# -a : 可能な限り属性を保持（archive モード）
# -v : 進捗を表示
# --exclude='.git' : .git ディレクトリを除外
# 末尾 / を付けることで、カレントディレクトリの「中身」だけをコピーする
rsync -av --exclude='.git' ./ "$dest/"

echo "✅ コピー完了: $(pwd) → $dest"
