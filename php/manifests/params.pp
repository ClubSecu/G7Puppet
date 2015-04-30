class php::params {
	case $::osfamily {
		Debian: {
			$package_name = php5
		}
		
		RedHat: {
			$package_name = php5
		}
	
		default: {
			fail("The ${module_name} module is not supported on ${::operatingsystem}")
		}
	}
}
