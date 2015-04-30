class g7apache::config {
	file { 'error':
		path => '/var/www/error', 
		ensure => directory, 
	}
	file { '/var/www/noindex.html' :      #default page config
		source => $g7apache::params::noindex,
		mode => 0644, 
		ensure => file, 
	}
}
