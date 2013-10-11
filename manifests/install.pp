define janus::install() {
  exec { 'janus::bootstrap':
    creates     => "/home/${name}/.vim",
    command     => '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash',
    cwd         => "/home/${name}/",
    environment => "HOME=/home/${name}/",
    user        => $name,
    require     => [
      Package['ack','bash','ctags', 'curl', 'git', 'ruby', 'rake']
    ]
  }
}
