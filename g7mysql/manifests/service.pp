class g7mysql::service {
	service { $g7mysql::params::mysqlservice :
		ensure => running, 
		hasrestart => true,
	}
}
