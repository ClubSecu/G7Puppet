class apache::config {
    file { "${apache::params::www_path}/error":
        path => "${apache::params::www_path}/error",
        ensure => directory,
    }
    file { "${apache::params::www_path}/error/404.html" :
        source => "404.html",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
}
