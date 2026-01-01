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
```sh
mkdir -p ~/.config/wezterm
ln -sf ~/dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
```

---

## リポジトリ構成
```text
dotfiles/
├── README.md
└── wezterm/
    ├── wezterm.lua
```
