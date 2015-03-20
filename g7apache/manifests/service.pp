class g7apache::service {
	service { $g7apache::params::apache :
		ensure => running, 
		hasrestart => true,
	}
}
