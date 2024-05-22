proxy=http://202.211.8.4:8080
switch_trigger=学校

function set_proxy() {
  export http_proxy=$proxy
  export HTTP_PROXY=$proxy
  export ftp_proxy=$proxy
  export FTP_PROXY=$proxy
  export all_proxy=$proxy
  export ALL_PROXY=$proxy
  export https_proxy=$proxy
  export HTTPS_PROXY=$proxy

  git config --global http.proxy $proxy
  git config --global https.proxy $proxy

  npm -g config set proxy $proxy
  npm -g config set https-proxy $proxy
  npm -g config set registry "http://registry.npmjs.org/"
}

function unset_proxy() {
  unset http_proxy
  unset HTTP_PROXY
  unset ftp_proxy
  unset FTP_PROXY
  unset all_proxy
  unset ALL_PROXY
  unset https_proxy
  unset HTTPS_PROXY

  git config --global --unset http.proxy
  git config --global --unset https.proxy

  npm -g config delete proxy
  npm -g config delete https-proxy
  npm -g config delete registry
  }

if [ "`networksetup -getcurrentlocation`" = "$switch_trigger" ]; then
  echo "Switch to proxy for university network"
  set_proxy
else
  echo "Switch to proxy for home network"
  unset_proxy
fi
