# -*- ruby -*-
name         'razor_wrapper'
source       'git@github.com:henk52/razor_wrapper.git'
author       'henk52'
license      'MIT'
summary      'Wrapper for the razor module.'
description  'Wrapper for the razor module, to make it easy for un-initiated to install the razor server.'
project_page 'https://github.com/henk52/razor_wrapper'

# NOTE: This file, has been ripped for the razor module, and hacked to 
#        hopefully support the razor_wrapper module.

# Set up our git directory, and figure out where the module is, so that
# we can run a successful build outside the working directory; this happens
# when puppet-librarian tries to build from git, at least.
moduledir = File.dirname(__FILE__)
ENV['GIT_DIR'] = moduledir + '/.git'

# Grab the version number from git, and bump up the tiny version number if we
# have a postfix string, since Puppet only supports SemVer 1.0.0, which
# doesn't have anything but "version" and "pre-release of version".
#
# Technically this isn't accurately reflecting the real next release number,
# but whatever - it will do for now.
git_version = %x{#{moduledir}/bin/get-version-from-git}.chomp
unless $?.success? and git_version =~ /^\d+\.\d+\.\d+/
  raise "Unable to determine version using git: #{$?} => #{git_version.inspect}"
end
version    git_version

## Add dependencies, if any:
dependency 'puppetlabs/razor', '>= 1.0.1'
dependency 'puppetlabs/postgresql'
# This is the network setting for Fedora/RedHat.
dependency 'razorsedge/network'
dependency 'lex/dnsmasq'


# Generate the changelog file
system("'#{moduledir}'/bin/git-log-to-changelog > '#{moduledir}'/CHANGELOG")
$? == 0 or fail "changelog generation #{$?}!"

# Generate the contributor list in README.md
system("git shortlog -se|sort -nr|sed -e's/^.\\{7\\}/ - /' > #{moduledir}/CONTRIBUTORS")
$? == 0 or fail "contributor list generation #{$?}!"
