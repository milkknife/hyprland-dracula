# Hyprland-dracula

![Screenshot](https://raw.githubusercontent.com/dracula/hyprland/main/screenshot.png)

## Why

Some people showed interest/asked for my config files. My personal reasons however:

- You don't want to use GNOME/KDE, but you want a reasonable wayland setup
- You don't want to spend days/weeks setting up something that should be ready out of the box with little to no manual configuration
- You don't want someone else's unfamiliar, painfully gaudy, and over-complicated setup
- You are very familiar with dwm, dwl, xmonad, and/or awesome-wm

## Details

- 💧️ [Hyprland](https://github.com/hyprwm/Hyprland)
  - fast
  - ~1/5th the size of Sway, while having all the features + animations/blurs/curves/shadows
  - sane features, such as small popups floating by default
- 💀️ [Dracula](https://github.com/dracula/dracula-theme/tree/master/themes)
  - dark
  - support for almost every application you can think of
  - sublime/monokai-like superb color distinction

## How to use

1. Clone this repository and use the files to your liking.
2. Edit/run through the settings in `hyprland.def.conf`, and save as `hyprland.conf`

<details>
<summary>The rest is up to your personal preferences, but here is roughly what I did... (click to expand)</summary>

---

- **base install**: [Arch Linux Full-Disk Encryption Installation Guide](https://gist.github.com/huntrar/e42aee630bee3295b2c671d098c81268) with linux-hardened kernel
- **post install**: [a blog post](https://www.fosskers.ca/en/blog/wayland) helped me figure out which packages/configurations I was missing
  - take a look at `.profile` in this repository as well
- **flatpak settings**: hardened and sane defaults
  ```bash
  flatpak override --noshare=network \ # whitelist network access for specific packages only when needed
  --nosocket=x11 --nosocket=fallback-x11 --socket=wayland \ # force wayland, whitelist x11 only when needed (krita, lutris)
  --filesystem=~/.themes:ro --filesystem=~/.icons:ro --filesystem=xdg-config/fontconfig:ro \ # themes in these folders for flatpaks
  --filesystem=xdg-run/pipewire-0:ro --filesystem=xdg-config/Kvantum:ro \ # pipewire->pulseaudio setup, Qt style theme, respectively
  --user # to run without root
  ```
  - I suggest using lutris flatpak for sandboxed windows/wine applications (very cool)
  - [more info on fontconfig](https://wiki.archlinux.org/title/Font_configuration#Set_default_or_fallback_fonts)
- **xdg-user-dirs**: shorthand defaults in this repo's `.config/user-dirs.dirs`, good for terminal, faster to read/recognize
- **cli tools**: tools such as ls and grep are outdated. See [modern-unix](https://github.com/ibraheemdev/modern-unix) for arguably superior variants.
  - other: [gnome keyring setup](https://rtfm.co.ua/en/linux-gnome-keyring-setup-as-freedesktop-secretservice/) | [lokinet+dnscrypt-proxy](https://i2p.rocks/blog/lokinet-with-dnscrypt-proxy.html)

### theme specifics:

- **cursor**: [reisen](https://www.opendesktop.org/u/muha0644) animated touhou cursors ported to linux
- **wallpaper**: [pixiv](https://www.pixiv.net/en/users/2750946) straight from the artists
- **icon theme**: [obsidian](https://www.opendesktop.org/p/1169579/) is one of the most full-featured icon packs that do not look infantile like papirus.
- **font**: `noto-fonts`, `noto-fonts-cjk`, `noto-fonts-emoji` (Noto Sans Regular 10)
  - hinting: `none`
  - antialiasing: `rgba`
- **terminal font**: `iosevka`, [iosevka-cjk](https://github.com/be5invis/Sarasa-Gothic), [iosevka-nerd](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka) (Iosevka:size=12)
  - emacs config.el: `(setq doom-font (font-spec :family "iosevka" :size 14))`
  
### applications:

- editing
  - **big editor**: doom emacs (config.el: `(setq doom-theme 'doom-dracula)`)
  - **little editor**: vis
- theming
  - configure **gtk**: nwg-look [theme](https://github.com/dracula/gtk)
  - configure **qt**: kvantum & qt5ct/qt6ct [theme](https://github.com/dracula/gtk/tree/master/kde)
  - configure **mime**: selectdefaultapplication
- terminal
  - **terminal**: foot [theme](https://github.com/dracula/foot)
  - **launcher**: fuzzel [theme](https://github.com/dracula/fuzzel)
  - **task manager**: btop, nvtop (theme in btop settings)
  - **system info**: fastfetch
- wlroots
  - **swaylock** [theme](https://github.com/dracula/swaylock)
  - **waybar** [theme](https://github.com/dracula/waybar)
- other
  - **email client**: aerc
  - **file manager**: [nnn](https://github.com/jarun/nnn)
  - **image viewer**: imv (imv-dir), chafa (terminal)
</details>
