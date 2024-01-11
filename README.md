## Leetcode solutions in Ruby
1. Install Ruby and vscode
    ```sh
    # Debian
    sudo apt install ruby ri ruby-dev bundler libyaml-dev code
    # AlmaLinux 9
    sudo dnf config-manager --set-enabled crb
    sudo dnf install @development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel code
    # WSL
    sudo dnf install @fonts
    # Fedora
    sudo dnf install @c-development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel code
    ```

2. Install gems
    ```sh
    bundle config set --local path vendor/bundle
    bundle install
    ```

3. Install vscode extensions
    ```sh
    code --install-extension tuttieee.emacs-mcx
    code --install-extension shopify.ruby-lsp
    ```

5. (Optional) Remove some packages
    ```sh
    # Raspberry pi
    sudo apt purge --autoremove dillo* htop geany* thonny*
    # Fedora
    sudo dnf erase nano gnome-boxes libreoffice* rhythmbox gnome-maps \
      gnome-weather virtualbox-guest-additions open-vm-tools hyperv* \
      spice-vdagent ibus-hangul libhangul {ibus-,}{libzhuyin,libpinyin} \
      ibus-anthy zenity xorg-x11-server-Xorg amd-gpu-firmware \
      atheros-firmware qemu* tigervnc-server-minimal tmux \
      qpdf-libs libertas-firmware nvidia-gpu-firmware mediawriter \
      gnome-user-share toolbox mt7xxx-firmware tcpdump gnome-classic-session
    ```
