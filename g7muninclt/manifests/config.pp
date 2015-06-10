# Created by Freebien
class g7muninclt::config {
	file { "$g7muninclt::params::configfile" :
	ensure => present,
	content => template('g7muninclt/munin-node.erb'),
	}
}
