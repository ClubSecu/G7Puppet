class g7muninsrv::install {
	package { $g7muninsrv::params::package_name : 
		ensure => installed,
	}

}

