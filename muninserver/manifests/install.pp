# Created by Sp1p3 and Nomekrax
class muninserver::install {
	# Installing module apache which is required in munin
	require apache
	
	package { $muninserver::params::package_srv : 
		ensure => installed,
	}
	package { $muninserver::params::package_plugins : 
		ensure => installed,
	}

}

