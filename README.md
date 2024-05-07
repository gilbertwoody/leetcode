### Leetcode solutions in Ruby
#### Packages/Gems
* FreeBSD
    ```sh
    pkg install ruby rubygem-{bundler,ruby-lsp,minitest,debug,algorithms} vscode
    vscode --install-extension tuttieee.emacs-mcx
    vscode --install-extension shopify.ruby-lsp
    ```

* Linux
  1. [Setup](https://code.visualstudio.com/docs/setup/linux) Visual Studio Code package repository

  2. Install Ruby and vscode
    * Debian
      ```sh
      sudo apt install ruby ri ruby-dev bundler libyaml-dev code
      ```
    * AlmaLinux 9
      ```sh
      sudo dnf config-manager --set-enabled crb
      sudo dnf install @development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel code
      ```

  3. Install gems
      ```sh
      bundle config set --local path vendor/bundle
      bundle install
      ```

#### Vscode extensions
```sh
code --install-extension tuttieee.emacs-mcx
code --install-extension shopify.ruby-lsp
```

### Package override for Fedora Sway Atomic
```
sudo rpm-ostree override remove NetworkManager-l2tp \
  NetworkManager-l2tp-gnome \
  amd-gpu-firmware \
  amd-ucode-firmware \
  atheros-firmware \
  iwlegacy-firmware \
  nvidia-gpu-firmware \
  nxpwireless-firmware \
  realtek-firmware \
  spice-vdagent \
  tiwilink-firmware \
  virtualbox-guest-additions \
  toolbox \
  open-vm-tools \
  qemu-guest-agent \
  qemu-user-static \
  qemu-user-static-alpha \
  qemu-user-static-arm \
  qemu-user-static-cris \
  qemu-user-static-hexagon \
  qemu-user-static-hppa \
  qemu-user-static-loongarch64 \
  qemu-user-static-m68k \
  qemu-user-static-microblaze \
  qemu-user-static-mips \
  qemu-user-static-nios2 \
  qemu-user-static-or1k \
  qemu-user-static-ppc \
  qemu-user-static-riscv \
  qemu-user-static-s390x \
  qemu-user-static-sh4 \
  qemu-user-static-sparc \
  qemu-user-static-x86 \
  qemu-user-static-xtensa \
  qemu-user-static-aarch64
```