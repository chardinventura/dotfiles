essential=(
	linux-lts
	linux-firmware
	linux-lts-headers
	base
	base-devel
	grub
	efibootmgr
	networkmanager
	nvim
	openssh
	git
	yay
)

setup=(
	1password
	xdg-user-dirs
	acpi
	android-tools
	scrcpy
	archlinux-keyring
	bc
	bluez-utils
	brightnessctl
	exa
	gotop
	nvidia-580xx-dkms
	nvidia-580xx-settings
	xorg-server
	xorg-xinit
	i3-wm
	i3lock
	i3status-rust
	xautolock
	xclip
	rofi
	alacritty
	feh
	flameshot
	google-chrome
	evince
	pavucontrol
	moc
	mpv
	intel-media-driver
	libva-intel-driver
	ttf-juliamono
	noto-fonts
	noto-fonts-cjk
	noto-fonts-emoji
	ttf-nerd-fonts-symbols
	pipewire
	pipewire-alsa
	pipewire-pulseaudio
	playerctl
	tree
	unrar
	upower
	zinit
	oh-my-zsh-git
	zsh
	jq
)

development=(
	intellij-idea-community-edition
	amazon-corretto-17
	shotcut
	gradle
	mongodb-bin
)

entertainment=(
	ani-cli-git
	cava
	cmatrix
	discord
	libva-intel-driver
	gimp
	obs-studio
	transmission-cli
	spotify
)

list_of_packages=(essential setup entertainment development)

while true; do
	echo -e "\nPlease select the list of packages to install:"
	
	for i in "${!list_of_packages[@]}"; do
		echo "$((i + 1)). ${list_of_packages[$i]}"
	done
	
	echo -ne "\nNumber: "
	
	read selection
	echo ""
		
	if [[ $selection =~ ^[0-9]+$ ]]; then

		if [[ $selection -ge 1 && $selection -le ${#list_of_packages[@]} ]]; then
			list_of_packages_index=$((selection - 1))
			declare -n packages_to_install="${list_of_packages[list_of_packages_index]}[*]"
			break
		else
			echo "Incorrect number ->$selection<-"
		fi
	else
		echo "Bad input: ->$selection<-"
	fi
done


echo -e "Do you want to install these packages? \n$packages_to_install"
echo -ne "\nType an option [yes/no] "
read decision

if [[ $decision == "yes" ]]; then
	echo ""
	yay -S $packages_to_install
fi
