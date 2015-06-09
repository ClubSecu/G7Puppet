class muninclient::install {
    package { $muninclient::params::package_name :
        ensure => installed,
    }
}
