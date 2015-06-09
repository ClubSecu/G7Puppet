# == Class: g7muninsrv
class g7muninsrv {
	Class['g7muninsrv::params']~>Class['g7muninsrv::install']~>Class['g7muninsrv::service']~>Class['g7muninsrv::config']
	include g7muninsrv::params, g7muninsrv::install, g7muninsrv::service, g7muninsrv::config
}
