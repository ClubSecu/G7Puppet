class mysql::params {
	case $::osfamily {
		Debian: {
			$package_name = mysql
			$service_name = mysql
		}
		
		RedHat: {
			$package_name = mysql
			$service_name = mysql
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
