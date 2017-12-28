class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure  => 'running',
    enable  => 'true',
  }
  ssh_authorized_key {'root@ip-172-31-37-151.us-east-2.compute.internal':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjaAUuwRVO4P4CsGzOaF17iykyX8i2ZzK921wgt5mvXC3cm7dzfnjz3XSY6fo8AUH7NJfb5YPwtjAi7s6boucNTLMKzwR0fP4fOnu8CEnONM7qepyFF57MNuZfXlNB9EiWyuUuImW1mNRqzfI+XgRJIFfHtwJX48tkk0OrIuFpu3PIC7FY4CLcKnKIAYj+2PbScdqA5xY3I9K8s8iuhlDG05IQ04rT38Bl8TiA9qkCiaAN8wHtYIzpqm7q5WQ/9Cf0ms3mE5fsSaMhSFn86rt3ISXbP8feKZDcXYa3XECsqw43INn521jk02hiByAUPyghCbEFcfuqscoTEgXpXfPz',
  }
}
