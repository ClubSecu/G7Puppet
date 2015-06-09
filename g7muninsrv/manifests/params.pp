class g7muninsrv::params {
	$package_srv='munin'  #service name for munin server
	$package_plugins='munin-plugins-core' # service name for munin plugins

	#Auto-configuration variables
	$conf_file= "/etc/munin/munin-conf.d/"
	$conf_path= "/etc/munin/"
	$conf_node_name= "KenMaster"
	$conf_node_address = "192.168.0.3"
	$conf_node_useparam = "yes"
}
