class mysql::params {
	case $::osfamily {
		Debian: {
			$package_name = mysql-server
			$service_name = mysqld
		}
		
		RedHat: {
			$package_name = mysql-server
			$service_name = mysqld
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
