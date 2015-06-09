class muninclient::service {
    service { $muninclient::params::service_name :
        ensure => running,
    }
}
