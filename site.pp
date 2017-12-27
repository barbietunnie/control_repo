node default {
  file { '/opt/README':
    ensure  => file,
    content => 'This is our readme',
    owner   => 'root',
  }
}
