class g7muninsrv::params {
	$package_srv='munin'  #service name for munin server
	$package_plugins='munin-plugins-core' # service name for munin plugins

	#Auto-configuration variables
	$conf_file='/etc/munin/munin-node.conf'
	$conf_node_name = "fabien"
	$conf_node_address = "192.168.0.2"
	$conf_node_params = "yes"
}
