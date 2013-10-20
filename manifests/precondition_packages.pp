# See: https://gist.github.com/lutter/6618013
# http://www.puppetcookbook.com/posts/install-package.html
package { "libarchive-devel":
    ensure => "installed"
}
package { "unzip":
    ensure => "installed"
}


# I'm not sure if this is needed with the new razor release.
user { "razor":
  ensure     => "present",
}

