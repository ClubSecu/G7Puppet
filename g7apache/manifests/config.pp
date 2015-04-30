class g7apache::config {
	file { 'error':
		path => '/var/www/error', 
		ensure => directory, 
	}
	file { '/var/www/noindex.html' : 
		source => $g7apache::params::default_web_page,
		mode => 0644, 
		ensure => file, 
	}
}
