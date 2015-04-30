class apache {

  # define dependencies between classes
  Class['apache::params']->Class['apache::install']~>Class['apache::service']~>Class['apache::config']

  include apache::params, apache::install, apache::service, apache::config

}
