class g7apache::config {
	file { 'ERROR - Directory':
		path => "${g7apache::params::www_path}error", 
		ensure => directory, 
		owner => $g7apache::params::owner, 
	}
	#default page config:
	file { 'ERROR - File':      
		path => "${g7apache::params::www_path}error/noindex.html",
		source => $g7apache::params::noindex,
		mode => 0644, 
		ensure => file,
		owner => $g7apache::params::owner, 
	}
}
