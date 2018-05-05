# dotfiles

## software
* gnome-terminal / tilix
* bash for shell
* weechat for IRC

## Roboto-Adwaita
This is a GNOME shell theme which just replaces the Cantarell default font with Roboto. Feel free to use whatever font or font-size you want just by editing the `gnome-shell.css` file.

## vim
* Put the `.vimrc` into your home folder - feel free to tweak it!

## things to note
Depending on your distribution, the `weechat.conf` file may not allow you to connect to your desired IRC network due to a certificate problem. To overcome this, you need to identify where they are located and replace line 232 `gnutls_ca_file = "/etc/pki/tls/certs/ca-bundle.crt"` with the correct path. This `weechat.conf` file is known to work with Fedora however some distributions may use a path like `/etc/ssl/certs/ca-certificates.crt`.
