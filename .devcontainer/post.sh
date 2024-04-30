dnf install -y 'dnf-command(config-manager)'
dnf config-manager --set-enabled crb 
dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
dnf install -y @development ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel gh
bundle install
