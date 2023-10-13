## Leetcode solution in Ruby
Mostly done on my lovely raspberry pi 400. For Github Codespaces, skip step 1 and 3.

1. Install Ruby
    ```sh
    sudo apt install ruby ri ruby-dev bundler libyaml-dev code
    ```

2. Install gems
    ```sh
    bundle install
    ```

3. Install vscode extensions
    ```sh
    code --install-extension tuttieee.emacs-mcx
    # code --install-extension rebornix.ruby
    code --install-extension shopify.ruby-lsp
    code --install-extension KoichiSasada.vscode-rdbg
    # code --install-extension wingrunr21.vscode-ruby
    ```

4. Place vscode user settings
    ```sh
    cp settings.json ~/.config/Code/User/
    ```

5. (Optional) Remove unnecessary packages
    ```sh
    sudo apt purge --autoremove chromium-browser* dillo* htop geany* thonny*
    ```
