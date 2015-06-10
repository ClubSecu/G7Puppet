class muninclient::config {
    file { "$muninclient::params::configfile" :
        ensure => present,
        content => template('muninclient/munin-node.erb'),
    }
    file { "Munin - Web Page" :
        path => '/var/www/munin.html',
        ensure => present,
        content => template('muninclient/munin-web-page.erb'),
        owner => www-data,
    }
}
