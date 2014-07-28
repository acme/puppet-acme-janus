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
class janus {

  if(!defined(Package['ack-grep'])) {
    package { 'ack-grep':
      ensure => present,
    }
  }

  if(!defined(Package['bash'])) {
    package { 'bash':
      ensure => present,
    }
  }

  if(!defined(Package['exuberant-ctags'])) {
    package { 'exuberant-ctags':
      ensure => present,
    }
  }

  if(!defined(Package['curl'])) {
    package { 'curl':
      ensure => present,
    }
  }

  if(!defined(Package['git'])) {
    package { 'git':
      ensure => present,
    }
  }

  if(!defined(Package['ruby'])) {
    package { 'ruby':
      ensure => present,
    }
  }

  if(!defined(Package['rake'])) {
    package { 'rake':
      ensure => present,
    }
  }

}
