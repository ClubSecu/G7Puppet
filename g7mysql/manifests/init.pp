# == Class: g7mysql
class g7mysql {
	Class['g7mysql::params']~>Class['g7mysql::install']~>Class['g7mysql::service']~>Class['g7mysql::config']
        include g7mysql::params, g7mysql::install, g7mysql::service, g7mysql::config
}
