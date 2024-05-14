FROM docker.io/ruby

RUN <<EOF
apt update 
apt-get install wget -y
mkdir -p -m 755 /etc/apt/keyrings
wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg > /etc/apt/keyrings/githubcli-archive-keyring.gpg 
chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
echo -n 'deb [signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] ' >> /etc/apt/sources.list.d/github-cli.list
echo -n 'https://cli.github.com/packages stable main' >> /etc/apt/sources.list.d/github-cli.list
apt update
apt install gh -y
EOF