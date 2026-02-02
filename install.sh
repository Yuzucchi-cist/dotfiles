# WezTerm
mkdir -p ~/.config/
mkdir -p /
export USERPROFILE=$(cmd.exe /c "set /P<NUL=%USERPROFILE%" | tr '\\' '/' | sed -E "s/^(.):/\/mnt\/\l\1/")
cp -r wezterm $USERPROFILE/.config
