## Leetcode solutions in Ruby
1. [Setup](https://code.visualstudio.com/docs/setup/linux) Visual Studio Code package repository

1. Install Ruby and vscode
    * Debian
      ```sh
      sudo apt install ruby ri ruby-dev bundler libyaml-dev code
      ```
    * AlmaLinux 9
      ```sh
      sudo dnf config-manager --set-enabled crb
      sudo dnf install @development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel code
      # For WSL
      sudo dnf install @fonts
      ```
    * FreeBSD
      ```sh
      pkg install ruby rubygem-{bundler,ruby-lsp,minitest,debug,algorithms} vscode
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
