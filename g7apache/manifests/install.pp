class g7apache::install {
	package { $g7apache::params::package_name : 
		ensure => latest,
	}

}
