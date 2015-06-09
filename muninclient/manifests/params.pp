class muninclient::params {
    case $::osfamily {
        Debian: {
            notice("You're on ${::operatingsystem} !!! You rocks !")
            $package_name = munin-node
            $service_name = munin-node
        }
        RedHat: {
            $package_name = munin-node
            $service_name = munin-node
        }
        default: {
            fail("The ${module_name} module is not supported on ${::operatingsystem}")
            fail("Please, install Debian...")
            fail("Or Debian...")
            fail("Or Debian.")
            fail("And use bash !")
        }
    }
    $configfile = "/etc/munin/munin-node.conf"
    $muninclient_hostname = fabien
    $muninclient_allowed_master = "\\^192\\.168\\.0\\.100\\$"
}
