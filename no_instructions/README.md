=== Reminders for standing up a new system ===

 * Install Fedora Media Writer
   $ sudo dnf install mediawriter

 * Install Fedora image onto a thumbdrive
   $ mediawriter
   
 * Boot image on new machine.  Now it's time to install!

 * Don't forget to enable full-disk encryption.  Installing... ... ...

 * Reboot!  Wait wait wait...

 * Get Chrome from the google repository.
   $ sudo dnf config-manager --set-enabled google-chrome
   $ sudo dnf install google-chrome-stable

 * Get Things You Will Want
   $ sudo dnf install xclip
   $ sudo dnf install gnome-tweaks
   $ sudo dnf install emacs

 * Run through Gnome Settings.  Mainly, update hostname and add a shortcut for
   opening a terminal and for a browser, because not having these things is
   annoying in the extreme.  Also, set Chrome as the default browser.

 * Focus-follows-mouse is in gnome-tweaks

 * Get Chrome from the google repository.
   $ sudo dnf config-manager --set-enabled google-chrome
   $ dudo dnf install google-chrome-stable

 * Cut an ssh key
   $ ssh-keygen

 * Add key to GitHub.  You can copy it with the command below:
   $ xclip ~/.ssh/id_rsa.pub

 * Get a normal shell setup
   $ git clone git@github.com:jaredbuckner/happy-bash .bash.d

 * Activate the normal shell setup
   $ rm .bashrc ; ln -s .bash.d/no_instructions/bashrc .bashrc

 * Activate the normal emacs setup
   $ emacs some_random_file
   # Select the option to not show the splash screen again
   $ emacs .emacs
   # Add:  (load "~/.bash.d/no_instructions/init.el")

 * Test:
   $ bash

 * Install GNOME caffeine.  Just do a search and then enable it in the browser.
   The Right Thing(tm) will happen.

 * Generate a local key certificate for signing akmods.  This is ok because the
   drive itself is encrypted, so the key is also hidden.
   $ sudo dnf install akmods
   $ sudo /usr/sbin/kmodgenca
   $ sudo mokutil --import /etc/pki/akmods/certs/public_key.der
   # Select a password, then reboot

 * Install NVidia Proprietary Drivers
   $ sudo dnf install akmod-nvidia
   # A reboot will be required AFTER the akmod build happens.  Wait a minute or two

 * Set up VPN

 * Distribute SSH public key

 * Set up VNC.  Sadly, I have to use RealVNC for work...

 * Install Teams from the Microsoft Repository.  Use the information here:
   # https://linuxiac.com/how-to-install-microsoft-teams-on-linux-from-the-official-ms-repository/
   # ... but do edits directly in /etc/yum.repos.d/ before...
   $ sudo dnf check-update
   $ sudo dnf install teams
   # After first run of Teams, use gnome-tweaks to remove it from the startup
     applications.  Take that!

 * Install Flathub
   $ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

 * Install Slack
   $ flatpak install flathub com.slack.Slack

 * Install Spotify
   $ flatpak install flathub com.spotify.Client

