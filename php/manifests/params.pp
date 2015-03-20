class mysql::params {
	case $::osfamily {
		Debian: {
			$package_name = mysql2
			$service_name = mysql2
		}
		
		RedHat: {
			$package_name = httpd
			$service_name = httpd
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
