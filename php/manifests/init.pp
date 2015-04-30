class php {

  # define dependencies between classes
  Class['php::params']->Class['php::install']

  include php::params, php::install

}
