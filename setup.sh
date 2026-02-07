# Create directories.
mkdir -p ~/.config/Code/User

pairs=(
#HOME
	"clojure:$HOME/.clojure"
	"moc:$HOME/.moc"
	"xinit/.xinitrc:$HOME/"
	"zsh/.zshrc:$HOME/"
#$HOME/.config
	"alacritty:$HOME/.config"
	"i3:$HOME/.config"
	"i3status-rust:$HOME/.config"
	"nvim:$HOME/.config"
	"mpv:$HOME/.config"
	"rofi:$HOME/.config"
	"transmission-daemon:$HOME/.config"
	"vscode-bin:$HOME/.config/Code/User/"
#/etc/
	"makepkg/makepkg.conf:/etc/"
	"pacman/pacman.conf:/etc/"
	"UPower:/etc/"
	"vconsole/vconsole.conf:/etc"
	"xorg.conf.d:/etc/X11/"
)

for pair in "${pairs[@]}"; do
  src="${pair%%:*}"
  dst="${pair#*:}"
  
  sudo cp -r "$src" "$dst"
  echo "Copied $src to $dst"
done
