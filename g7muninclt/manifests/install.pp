# Created by Freebien
class g7muninclt::install {
	package { $g7muninclt::params::package_name :
	ensure => installed,
	}
}

