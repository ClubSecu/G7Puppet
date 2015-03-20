class g7apache {

	Class['g7apache::params']~>Class['g7apache::install']~>Class['g7apache::service']~>Class['g7apache::config']
	include g7apache::params, g7apache::install, g7apache::service, g7apache::config
}
