class scl inherits scl::params
{
	package { $::scl::params::package_name:
		ensure => installed,
	}
}
