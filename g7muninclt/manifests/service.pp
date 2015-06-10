# Created by Freebien
class g7muninclt::service {
    service { $g7muninclt::params::service_name :
        ensure => running,
    }
}
