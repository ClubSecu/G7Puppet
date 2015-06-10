class::munninserver{
    package { $munninserver::params::packagename :
                ensure => installed,
            }
}
