### Setup
#### Fedora Sway Atomic
* Set up repo for github cli and vscode and installation
  ```sh
  cat fedora/vscode.repo | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
  wget -O- /etc/yum.repos.d/gh-cli.repo |\
    sudo tee https://cli.github.com/packages/rpm/gh-cli.repo > /dev/null
  sudo rpm-ostree install code gh
  ```

* Install additional packages
  ```sh
  sudo rpm-ostree install --reboot racket emacs texmacs wireshark graphviz
  ```

* Configure sway
  ```sh
  mkdir ~/.config/{sway,waybar}
  cp fedora/sway-config ~/.config/sway/config
  cp fedora/waybar-config.jsonc ~/.config/waybar/
  ```

#### NixOS
* Make configuration ready
  ```sh
  sudo cp nixos/*.nix /etc/nixos/
  ```

* Switch
  ```
  sudo nixos-rebuild switch
  ```
