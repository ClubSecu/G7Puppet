class g7php::install {
	package { $g7php::params::php : 
		ensure => lastest,
	}
}
