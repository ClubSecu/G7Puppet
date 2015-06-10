# Created by Sp1p3 and Nomekrax
# == Class: muninserver
class muninserver {
	Class['muninserver::params']~>Class['muninserver::install']~>Class['muninserver::service']~>Class['muninserver::config']
	include muninserver::params, muninserver::install, muninserver::service, muninserver::config
}
