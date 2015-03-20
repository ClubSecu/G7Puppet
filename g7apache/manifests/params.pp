class g7apache::params{
	case $::osfamily{
		Debian:{$apache='apache2'}
		CentOs:{$apache='httpd'}
	}		
}
