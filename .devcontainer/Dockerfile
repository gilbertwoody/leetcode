FROM docker.io/almalinux/9-base

RUN dnf install -y 'dnf-command(config-manager)'
RUN dnf config-manager --set-enabled crb 
RUN dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
RUN dnf install -y gh
RUN dnf install -y ruby rubygem-bundler rubygem-irb ruby-devel libyaml-devel
RUN dnf install -y @development
