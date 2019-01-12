# dotfiles
![Obligatory Screenshot](https://raw.githubusercontent.com/digiberk/dotfiles/master/screenshot.png) 

## Extensions, Themes, Tweaks, etc.
After hunting around for a nice Adwaita replacement, I have settled on [Arc](https://github.com/horst3180/arc-theme). It has a soft selection of colours and it themes everything very nicely. For the icons, I am currently using [La Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme). I also found [Flat Remix](https://github.com/daniruiz/flat-remix) to be another great icon set. My cursor is Adwaita.

As for extensions, I only use three at the moment.

* User themes
* GSConnect
* Dash to Dock

I used to utilise quite a lot of extensions but soon I realised I didn't need them. After adapting to the GNOME workflow, it is very hard to use anything else. Of course, a few tweaks were made using the GNOME Tweaks program but other than that, its pretty stock.

You may notice that I only have one window toggle, that is because I mainly use keyboard shortcuts to close, maximise and minimise my windows. If I ever want to use the titlebar, I use middle-click to minimise and double-click to maximise.

I've also bound my caps-lock key to escape using the GNOME Tweaks app.

## BASH and Vim
* If you want to use any of my files, put the `.vimrc` and `.bashrc` files in your home folder.
* For the weechat files, put them in `~/.weechat`. Please make a backup before replacing the existing files.

## About weechat.conf
Depending on your distribution, the `weechat.conf` file may not allow you to connect to your desired IRC network due to a certificate problem. To overcome this, you need to identify where they are located and replace line 232 `gnutls_ca_file = "/etc/pki/tls/certs/ca-bundle.crt"` with the correct path. This `weechat.conf` file is known to work with Fedora however some distributions may use a path like `/etc/ssl/certs/ca-certificates.crt`.

## What is gtk.css?
This file modifies the padding found in GNOME terminal by 10 pixels. Place this in your `~/.config/gtk-3.0/` directory if you want to use it. 

## A tip for when using Git
When people use git for the first time, they realise that it keeps asking you to enter your credentials when pushing to a remote repository. To fix this, open up the file `.gitconfig` which should be in your home directory. Next, paste the following:
```
[credential]
	helper = cache --timeout=3600
```
This will remember your credentials for 1 hour so you don't have to constantly enter your username and password. You can change this value to whatever you want but keep in mind that it is seconds.
