class mysql::service {
	service { $mysql::params::service_name :
		ensure      => running,
		enable      => true,
		hasrestart  => true,
	}
}
