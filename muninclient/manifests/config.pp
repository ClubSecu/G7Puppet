class muninclient::config {
    file { "$muninclient::params::configfile" :
        ensure => present,
        content => template('muninclient/munin-node.erb'),
    }
}
