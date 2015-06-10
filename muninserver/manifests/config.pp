# Created by Sp1p3 and Nomekrax
class muninserver::config {
	notice("55 55 44 44 4C 52 4C 52 42 41 - Contra")

	#Munin server configuration file which automatically add node's configuration
	file { "muninserver::params::conf_file" :
		path => "${muninserver::params::conf_path}munin.conf",
		content => template("muninserver/munin.conf.erb"),
		mode => 0644,
		ensure => file,
		owner => root,
	}
}
