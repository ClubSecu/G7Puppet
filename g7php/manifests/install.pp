class apache::install {
	package { $apache::params::apache : 
		ensure => lastest,
	}
}
