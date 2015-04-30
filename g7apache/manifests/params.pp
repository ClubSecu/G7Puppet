class g7apache::params{
	case $::osfamily{
		Debian: {
			$package='apache2', #service name 
			$owner='www-data', #service account name
			$www_path='/var/www/', # path to web directory
		}
		CentOs: {
			$package='httpd',  #service name
			$owner='apache',  #service account name
			$www_path='/var/www/html/', # path to web directory
		}
	}	
	$noindex="../files/noindex.html"  # link error web page 
		
}
