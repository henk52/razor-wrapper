# TODO make the parms configurable.
network::if::static { 'enp0s29f7u3':
  ensure       => 'up',
  ipaddress    => '192.168.1.231',
  netmask      => '255.255.255.0',
}
