# == Class: janus
#
# This is the Janus module. It installs Janus for a user. It has been tested
# under Ubuntu.
#
# Janus is a distribution of plug-ins and mappings for Vim, Gvim and MacVim.
#
# === Parameters
#
# None.
#
# === Variables
#
# None.
#
# === Examples
#
# class { 'janus': }
# janus::install { 'acme': }
#
# === Authors
#
# Leon Brocard <acme@astray.com>
#
# === Copyright
#
# Copyright 2013 Leon Brocard
#
define janus::install() {
  exec { 'janus::bootstrap':
    creates     => "/home/${name}/.vim",
    command     => '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash',
    cwd         => "/home/${name}/",
    environment => "HOME=/home/${name}/",
    user        => $name,
    require     => [
      Package['ack-grep','bash','exuberant-ctags', 'curl', 'git', 'ruby', 'rake']
    ],
  }
}
