# Hyprland-dracula

![Screenshot](https://raw.githubusercontent.com/dracula/hyprland/main/screenshot.png)

## Why

- You don't want to use GNOME/KDE, but you want a reasonable wayland setup
- You don't want to spend days/weeks setting up something that should be ready out of the box with little to no manual configuration
- You don't want someone else's unfamiliar, painfully gaudy, and over-complicated setup
- You are familiar with dwm, dwl, xmonad, and/or awesome-wm

## Details

- 💧️ [Hyprland](https://github.com/hyprwm/Hyprland)
  - fast
  - ~1/5th the size of Sway, while having all the features + animations/blurs/curves/shadows
  - sane features, such as small popups floating by default
- 💀️ [Dracula](https://github.com/dracula/dracula-theme/tree/master/themes)
  - dark
  - support for almost every application you can think of
  - sublime/monokai-like superb color distinction

<details><summary>unformatted scratch space</summary>

- `edit hyprland.def.conf to configure (add monitor, etc.) and save as hyprland.conf`
  - suggested: [Arch Linux Full-Disk Encryption Installation Guide](https://gist.github.com/huntrar/e42aee630bee3295b2c671d098c81268) with linux-hardened kernel
  - email: aerc
  - task manager: btop, nvtop (theme included in btop settings)
  - big editor: doom emacs
    - config.el: `(setq doom-theme 'doom-dracula)`
  - litle editor: vis [theme](https://github.com/dracula/vis)
  - system info: fastfetch
  - terminal: foot [theme](https://github.com/dracula/foot)
  - launcher: fuzzel [theme](https://github.com/dracula/fuzzel)
  - file manager: [nnn](https://github.com/jarun/nnn)
  - configure gtk: nwg-look [theme](https://github.com/dracula/gtk)
  - configure qt: kvantum & qt5ct/qt6ct [theme](https://github.com/dracula/gtk/tree/master/kde)
  - configure mime: selectdefaultapplication
  - swaylock [theme](https://github.com/dracula/swaylock)
  - waybar [theme](https://github.com/dracula/waybar)
  - login shell: dash
  - interactive shell: bash, until I find something better. ksh is too minimal and problematic.
  - flatpak global settings, network/filesystem access disabled default
  - lutris flatpak - sandboxed windows applications
  - xdg-user-dirs shorthand defaults
  - more: https://github.com/ibraheemdev/modern-unix

- cursor: https://www.opendesktop.org/u/muha0644
- wallpaper: https://www.pixiv.net/en/users/2750946
- font: noto sans cjk
  - hinting: `none`
  - antialiasing: `rgba`
- terminal font: iosevka, https://github.com/be5invis/Sarasa-Gothic
  - config.el: `(setq doom-font (font-spec :family "iosevka" :size 14))`

inspiration: https://github.com/owl4ce/dotfiles https://github.com/linuxmobile/hyprland-dots 

</details>
