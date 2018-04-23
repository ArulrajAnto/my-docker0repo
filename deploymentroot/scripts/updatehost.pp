if $newalias == undef 
{
	host { "${newhost}.${newdomain}" :
		name => "${newhost}.${newdomain}",
		ensure => 'present',
		ip => "${newip}",
		host_aliases => "${newhost}" ,
	} 
}
else 
{
	host { "${newhost}.${newdomain}" :
		name => "${newhost}.${newdomain}",
		ensure => 'present',
		ip => "${newip}",
		host_aliases => $newalias ,
	} 
}
