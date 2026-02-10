# dotfiles
自分用の開発環境・作業環境を再現するための dotfiles リポジトリです。
設定はシンボリックリンクを使って管理します。

---

## 対応環境
- OS
  - Windows 11
- Subsystem
  - WSL2:Ubuntu

---

## セットアップ方法

### Wezterm
```sh
mkdir -p ~/.config/wezterm
ln -sf ~/dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
```

### Vim
denops.vimのエラー対応のため、Vimの最新バージョンをソースからビルドして使用しています。

```sh
# 依存パッケージのインストール
sudo apt-get update
sudo apt-get install -y build-essential libncurses-dev git

# Vimのソースコードを取得
cd /tmp
git clone https://github.com/vim/vim.git
cd vim

# ビルド設定
./configure \
  --with-features=huge \
  --enable-multibyte \
  --enable-python3interp=yes \
  --with-python3-config-dir=$(python3-config --configdir) \
  --enable-cscope \
  --prefix=/usr/local

# ビルドとインストール
make -j$(nproc)
sudo make install

# バージョン確認
vim --version
```

---

## リポジトリ構成
```text
dotfiles/
├── README.md
└── wezterm/
    ├── wezterm.lua
```
