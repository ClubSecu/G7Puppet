class mysql {

  # define dependencies between classes
  Class['mysql::params']->Class['mysql::install']~>Class['mysql::service']

  include mysql::params, mysql::install, mysql::service

}
