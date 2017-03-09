#!/bin/bash
set -eux

# It's a script which deploys your plugin
echo fuel_plugin_stub > /tmp/fuel_plugin_stub

OS_NAME=''
if   grep -i CentOS /etc/issue.net >/dev/null; then
    OS_NAME='centos';
elif grep -i Ubuntu /etc/issue.net >/dev/null; then
    OS_NAME='ubuntu';
fi

function install_package {
    case "$OS_NAME" in
      'ubuntu' )
        apt-get install -y --force-yes -o 'APT::Get::AllowUnauthenticated=1' fuel-simple-service
        ;;
      'centos' )
        yum install -y fuel-simple-service
        ;;
      *)
        ;;

    esac
}

install_package
fuel-simple-service.py &
