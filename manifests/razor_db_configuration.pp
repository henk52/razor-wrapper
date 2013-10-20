class { 'postgresql::server': }

postgresql::server::db { 'razor_prd':
  user     => 'razor',
  password => postgresql_password('razor', 'razor_passwd'),
}
postgresql::server::db { 'razor_dev':
  user     => 'razor',
  password => postgresql_password('razor', 'razor_passwd'),
}
postgresql::server::db { 'razor_test':
  user     => 'razor',
  password => postgresql_password('razor', 'razor_passwd'),
}
