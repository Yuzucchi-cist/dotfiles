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

#### 1. 依存パッケージのインストール
```sh
# Vimビルド用パッケージ
sudo apt-get update
sudo apt-get install -y build-essential libncurses-dev git python3-dev

# Deno（denops.vim用）
curl -fsSL https://deno.land/install.sh | sh
echo 'export DENO_INSTALL="$HOME/.deno"' >> ~/.bashrc
echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# wslu（wslview用 - WSL環境でブラウザ起動に必要）
sudo apt-get install -y wslu
```

#### 2. Vimのビルドとインストール
```sh
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

#### 3. Vim設定のセットアップ
```sh
# .vimrcのシンボリックリンク作成
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/.vim ~/.vim

# vim-plugのインストール
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Vimを起動してプラグインをインストール
vim +PlugInstall +qall
```

---

## リポジトリ構成
```text
dotfiles/
├── README.md
├── .gitignore
├── install.sh
├── vim/
│   ├── .vimrc
│   └── .vim/
│       ├── autoload/
│       │   └── plug.vim
│       └── settings/
│           ├── init/
│           │   └── editor.vim
│           ├── ftplugin/
│           │   ├── lua.vim
│           │   └── make.vim
│           └── pluginconfig/
│               ├── plug.vim
│               ├── bufpreview.vim
│               └── easymotion.vim
└── wezterm/
    ├── wezterm.lua
    └── keybinds.lua
```
