class apache::params{
	case $::osfamily{
		Debian:{$apache='apache2'}
		CentOs:{$apache='httpd'}
	}		
}

class php::params{
	$php='php5'
}
                   
class mysql::params{
 	$sqls='mysql-server'
	$sqlc='mysql-commun'
}

