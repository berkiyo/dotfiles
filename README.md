# dotfiles
![](https://raw.githubusercontent.com/digiberk/dotfiles/master/screenshot.png)

As you can see, there isn't a whole lot going on. I like to keep it simple but still functional. 

## Extensions, Themes, etc.
After hunting around for a nice Adwaita replacement, I settled on [Arc](https://github.com/horst3180/arc-theme). It has a soft selection of colours which is pleasing and it themes everything very nicely. For the icons, I am currently using [La Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme). I also found [Flat Remix](https://github.com/daniruiz/flat-remix) to be another great icon set. My cursors are also Adwaita.

As for extensions, I only use three at the moment.

* User themes
* GSConnect
* Dash to Dock

I used to utilise quite a lot of extensions but soon I realised I didn't need them. After adapting to the GNOME workflow, it is very hard to use anything else. Of course, a few tweaks were made using the GNOME Tweaks program but other than that, its pretty stock.

You may notice that I only have one window toggle, that is because I mainly use keyboard shortcuts to close, maximise and minimise my windows. If I ever want to use the titlebar, I use middle-click to minimise and double-click to maximise. I think GNOME shell should default to these!

I've also bound my caps-lock key to escape using the GNOME Tweaks app.

## BASH, ZSH and Vim
* If you want to use any of my files, put the `.vimrc`, `.bashrc` and `.zshrc` files in your home folder. 
* For the weechat files, put them in `~/.weechat`. Please make a backup before replacing the existing files.

## about weechat.conf
Depending on your distribution, the `weechat.conf` file may not allow you to connect to your desired IRC network due to a certificate problem. To overcome this, you need to identify where they are located and replace line 232 `gnutls_ca_file = "/etc/pki/tls/certs/ca-bundle.crt"` with the correct path. This `weechat.conf` file is known to work with Fedora however some distributions may use a path like `/etc/ssl/certs/ca-certificates.crt`.

## What is gtk.css?
This file modifies the padding found in GNOME terminal by 10 pixels. Place this in your `~/.config/gtk-3.0/` directory if you want to use it. 
