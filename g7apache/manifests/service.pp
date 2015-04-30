class g7apache::service {
	service { $g7apache::params::package_name :
		ensure => running, 
		hasrestart => true,
	}
}
