class g7muninsrv::install {
	# Installing module apache which is required in munin
	require g7apache
	
	package { $g7muninsrv::params::package_srv : 
		ensure => installed,
	}
	package { $g7muninsrv::params::package_plugins : 
		ensure => installed,
	}

}

