# dotfiles

![Alt text](https://raw.githubusercontent.com/digiberk/dotfiles/master/screenshot.png)

## Extensions, Themes, Tweaks, etc

After hunting around for a nice Adwaita replacement, I have settled on [Adementary](https://github.com/hrdwrrsk/adementary-theme). For the icons, I am currently using [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme).

As for extensions, I only use three at the moment.

* User Themes
* Dash to Dock
* Workspace Indicator
* Sound Input & Output Device Chooser
* GTK Title Bar 
* Openweather
* Topicons Plus
* Autohide battery

You may notice that I only have one window toggle, that is because I mainly use keyboard shortcuts to close, maximise and minimise my windows. If I ever want to use the titlebar, I use middle-click to minimise and double-click to maximise.

I've also bound my caps-lock key to escape using the GNOME Tweaks app.

## BASH and Vim

* To use `.vimrc` and `.bashrc` files, place them in your home folder.

## About weechat.conf

* For the weechat files, put them in `~/.weechat`. Please make a backup before replacing the existing files.

Depending on your distribution, the `weechat.conf` file may not allow you to connect to your desired IRC network due to a certificate problem. To overcome this, you need to identify where they are located and replace line 232 `gnutls_ca_file = "/etc/pki/tls/certs/ca-bundle.crt"` with the correct path. This `weechat.conf` file is known to work with Fedora however some distributions may use a path like `/etc/ssl/certs/ca-certificates.crt`.

## What is gtk.css?

This file modifies the padding found in GNOME terminal by 10 pixels. Place this in your `~/.config/gtk-3.0/` directory if you want to use it.
