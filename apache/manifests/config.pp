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
    file { "Easter - Directory" :
        path => "${apache::params::www_path}/easter/",
        ensure => directory,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - Index - File" :
        path => "${apache::params::www_path}/easter/index.html",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/pages/index.html",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - Inc - Directory" :
        path => "${apache::params::www_path}/easter/inc",
        ensure => directory,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - CSS - File" :
        path => "${apache::params::www_path}/easter/inc/default.css",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/pages/inc/default.css",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - Easter - File" :
        path => "${apache::params::www_path}/easter/inc/easter.js",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/pages/inc/easter.js",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - Egg - File" :
        path => "${apache::params::www_path}/easter/inc/egg.js",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/pages/inc/egg.js",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    file { "Easter - Page - File" :
        path => "${apache::params::www_path}/easter/inc/page.js",
        source => "/home/fkleinbourg/modules-puppet2/apache/files/pages/inc/page.js",
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
    notice("Checking file ${apache::params::www_path}/monitor.html")
    file { "WEB - monitor.html - File" :
        path => "${apache::params::www_path}/monitor.html",
        content => template("apache/monitor.erb"),
        ensure => file,
        owner => $apache::params::owner,
        mode => 644,
    }
}
