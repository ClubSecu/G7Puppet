class g7muninsrv::service {
	service { $g7muninsrv::params::package_srv :
		ensure => running, 
		hasrestart => true,
	}
}
