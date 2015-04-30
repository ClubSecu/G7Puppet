class g7apache::params{
	case $::osfamily{
		Debian:{
			$apache='apache2', #service name
			$owner='www-data', #service account name
		}
		CentOs:{
			$apache='httpd',  #service name
			$owner='apache',  #service account name
		}
	}	
	$noindex="../files/noindex.html"  # link error web page 
		
}
