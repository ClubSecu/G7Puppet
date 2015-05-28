class g7apache::params {
	case $::osfamily {
		Debian: {
			$package_name='apache2'  #service name
			$owner='www-data' #service account name
			$www_path='/var/www/' # path to web directory
		}
		CentOs: {
			$package_name='httpd'  #service name
			$owner='apache'  #service account name
			$www_path='/var/www/html/' # path to web directory
		}
	}	
	$noindex="/home/resir/modules-puppet/g7apache/files/noindex.html"  # link error web page 
		
}
