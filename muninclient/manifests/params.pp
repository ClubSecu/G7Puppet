class muninclient::params {
    case $::osfamily {
        Debian: {
            notice("You're on ${::operatingsystem)} !!! You rocks !")
            $package_name = munin-node
            $service_name = munin
        }
        RedHat: {
            $package_name = munin-node
            $service_name = munin
        }
        default: {
            fail("The ${module_name} module is not supported on ${::operatingsystem}")
            fail("Please, install Debian...")
            fail("Or Debian...")
            fail("Or Debian.")
            fail("And use bash !")
        }
    }
}
