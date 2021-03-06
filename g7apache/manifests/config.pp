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
	#monitor web page - show system's informations
	file { 'Monitor - File':
		path => "${g7apache::params::www_path}monitor.html",
		content => template("g7apache/monitor.erb"),
		mode => 0644,
		ensure => file,
		owner => $g7apache::params::owner,
	}
	notice("La course du Temps est cruelle. Nul ne peut la modifier.Seule la mémoire des jours anciens n'est pas altérée. [Zelda - Ocarina of Time]")
}
