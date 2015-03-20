class apache::service {
	service { $apache::params::apache :
		ensure => running, 
		hasrestart => true,
	}
}
