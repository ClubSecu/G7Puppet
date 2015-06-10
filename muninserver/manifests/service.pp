# Created by Sp1p3 and Nomekrax
class muninserver::service {
	service { $muninserver::params::package_srv :
		ensure => running, 
		hasrestart => true,
	}
}
