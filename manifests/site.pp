node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is our readme',
    owner   => 'root',
  }
}
