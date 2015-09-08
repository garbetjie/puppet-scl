class scl::params
{
	case $::osfamily {
		"RedHat": {
			$package_name = "scl-utils"
		}

		default: {
			fail( "OS family ${::osfamily} is not supported for SCL management." )
		}
	}
}