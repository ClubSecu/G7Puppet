class g7mysql::install {
	package { $g7mysql::params::mysqls : 
		ensure => latest,
	}
	
	package { $g7mysql::params::mysqlc :
		ensure => latest,
	}

}
