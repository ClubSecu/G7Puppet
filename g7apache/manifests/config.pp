class g7apache::config {
	file { 'error':
		path => "${g7apache::params:www_path}error", 
		ensure => directory, 
	}
	file { "${g7apache::params:www_path}noindex.html" :      #default page config
		source => $g7apache::params::noindex,
		mode => 0644, 
		ensure => file, 
	}
}
