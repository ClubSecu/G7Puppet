class mysql::install {
	package { $mysql::params::package_name :
		ensure  => latest,
	}
}
