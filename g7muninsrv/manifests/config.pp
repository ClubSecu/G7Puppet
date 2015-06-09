class g7muninsrv::config {
	notice("55 55 44 44 4C 52 4C 52 42 41 - Contra")

	#Munin server configuration file which automatically add node's configuration
	file { "g7muninsrv::params::conf_file" :
		path => "${g7muninsrv::params::conf_path}munin.conf",
		content => template("g7muninsrv/munin.conf.erb"),
		mode => 0644,
		ensure => file,
		owner => root,
	}
}
