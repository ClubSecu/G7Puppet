class php {

  # define dependencies between classes
  Class['php::params']->Class['php::install']~>Class['php::service']

  include php::params, php::install, php::service

}
