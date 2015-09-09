define scl::collection
(
	# Repo configuration.
	$repo_baseurl,
	$repo_descr = undef,
	$repo_ensure = present,
	$repo_gpgcheck = 0,
	$repo_enabled = 1,

	$os_versions = [],

	# Package installation
	$package_install = undef,
)

{
	# Specific versions are allowed.
	if count( $os_versions ) > 0 and member( $os_versions, $::operatingsystemmajrelease ) == false {
		fail(
			join( [
				"Unsupported OS major release ${::operatingsystemmajrelease}. ",
				"SCL collection ${name} only supports versions [",
				join( $os_versions, "," ),
				"]"
			], "" )
		)
	}

	yumrepo { $name:
		descr => $repo_descr,
		baseurl => $repo_baseurl,
		ensure => $repo_ensure,
		gpgcheck => $repo_gpgcheck,
		enabled => $repo_enabled,
	}

	if $package_install {
		package { $package_install:
			ensure => present,
			require => Yumrepo[ $name ],
		}
	}
}