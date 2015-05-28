class apache::config {
    file { "ERROR - Directory":
        ensure => directory,
        owner => $apache::params::owner,
        path => "${apache::params::www_path}/error",
    }
    file { "ERROR - 404.html - File" :
        path => "${apache::params::www_path}/error/404.html",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/404.html",
        # Pour éviter le chemin relatif :
        #   Déplacer les fichiers plat de files dans template
        # content => template("apache/404.html"),
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "WEB - monitor.html - File" :
        path => "${apache::params::www_path}/monitor.html",
        content => template("apache/monitor.erb"),
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
}
