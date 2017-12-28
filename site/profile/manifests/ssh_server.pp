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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2ijd3HpchPudFlHBmYrMe8ue7eRBg++t20s7vuro0uuFKgayuyNoumFoSRyNfsEr5PIxCSLvFRu9uj28uhmaKMHJu9qGdOngDLkJsZgOmjUARFi7zmQJXWpRFCtH3Ntz4OWYqqQj98X21MMC42DVvfxJsXdtRE6EpW1Lxc/YM/JNLfq/I2OsYu1pnj4OmDRpTMit9CvonrnLIUKMvio/ZoAexsQ4iMh73R6UWN5M4xN6PBl8GPxXGgpGn1b+mpfK9DrpG+nYXaQ58hZS/CvpVLP7Rpe/59MJwWSDL74fVF+oSqpYrQijG1rgl1A43HQrjkvGEerD+TobB1nT7wGGP',
  }
}
