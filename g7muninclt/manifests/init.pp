# == Class: g7muninclt
# Created by Freebien 
class g7muninclt {
	Class['g7muninclt::params']->Class['g7muninclt::install']->Class['g7muninclt::config']->Class['g7muninclt::service']
	include g7muninclt::params, g7muninclt::install, g7muninclt::config, g7muninclt::service

}
