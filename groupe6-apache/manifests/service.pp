class apache::service {
	service { $apache::params::service_name :
		ensure      => running,
		enable      => true,
		hasrestart  => true,
	}
}
