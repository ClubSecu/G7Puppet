class g7apache::install {
	package { $g7apache::params::apache : 
		ensure => lastest,
	}

}
