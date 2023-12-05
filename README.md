## Leetcode solution in Ruby
Mostly done on my lovely raspberry pi 400. For Github Codespaces, skip step 1 and 3.

1. Install Ruby
    ```sh
    sudo apt install ruby ri ruby-dev bundler libyaml-dev code
    sudo dnf install ruby @development ruby-devel libyaml-devel
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

4. Place vscode user settings
    ```sh
    cp settings.json ~/.config/Code/User/
    ```

5. (Optional for raspberry pi) Remove unnecessary packages
    ```sh
    sudo apt purge --autoremove dillo* htop geany* thonny*
    ```
    