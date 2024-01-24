## Leetcode solutions in Ruby
1. [Setup Visual Studio Code](https://code.visualstudio.com/docs/setup/linux)

1. Install Ruby and vscode
    ```sh
    # Debian
    sudo apt install ruby ri ruby-dev bundler libyaml-dev code
    # AlmaLinux 9
    sudo dnf config-manager --set-enabled crb
    sudo dnf install @development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel code
    # WSL
    sudo dnf install @fonts
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
