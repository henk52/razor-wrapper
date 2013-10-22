# init.pp for razor_wrapper.


# Validate: puppet parser validate init.pp
# lint: puppet-lint init.pp

class razor_wrapper {
  require postgresql
  require razor

  # See: http://www.puppetcookbook.com/posts/creating-a-symlink.html
  file { '/usr/local/bin/torquebox':
    ensure => 'link',
    target => '/opt/razor/bin/razor-binary-wrapper',
  }
}
