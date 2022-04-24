class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDen0JH3reMSssYhUhgZT+V7u4CgL68/0MeOGL3nB+QRVvdByhCIhLrRF5840b1LPi+gCCRkH+f9moY1Jl4j2ksPhmbP6kvG7ny+PoxLEOs0dkauKQNJaQ1pNsB1ZD5EVTiAl7mHTLFYm+9KOTwQmKNwvdnhOFxovG+CA7s+MJj+edLg6amQZSX0NUfBe5Rf4JTG8T1Mco8WZ1sxxxPFuX4YxiQgnsJdXM05xXFz4ymaTAHTwfKbjrlJIHYX7kww+cP8C72qYpeTIL9dEiNky2MYTpDHsq5N/Dz2o9oG3EoDrxthP3X5sXCRbo4JaVwiI2WPNW0AtICvQLvY+5bU6aN root@master.puppet.vm',
  }  
}
