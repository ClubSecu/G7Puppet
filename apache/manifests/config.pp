class apache::config {
    file { 'error':
        path => '/var/www/error',
        ensure => directory,
    }
    file { '/var/www/error/404.html' :
        source => $apache::params::404_error_page,
        mode => 644,
        ensure => file,
        owner => $apache::params::owner
    }
}
