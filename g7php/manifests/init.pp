# == Class: g7php
class g7php {
	Class['g7php::params']~>Class['g7php::install']~>Class['g7php::config']
        include g7php::params, g7php::install, g7php::config
}
