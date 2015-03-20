# == Class: group7
#
# Full description of class group7 here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { group7:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2011 Your name here, unless otherwise noted.
#
class apache {
	Class['apache::params']~>Class['apache::install']~>Class['apache::service']~>Class['apache::config']
	include apache::params, apache::install, apache::service, apache::config
}
class mysql {
	Class['mysql::params']~>Class['mysql::install']~>Class['mysql::service']~>Class['mysql::config']
        include mysql::params, mysql::install, mysql::service, mysql::config
}

class php {
	Class['php::params']~>Class['php::install']~>Class['php::service']~>Class['php::config']
        include php::params, php::install, php::service, php::config
}
