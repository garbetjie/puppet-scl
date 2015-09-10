class scl::collections::python34
(
	$packages = "python34"
)

{
	::scl::collection { "scl-python34":
		repo_descr => "SCL - Python 3.4.2",
		repo_baseurl => 'https://www.softwarecollections.org/repos/rhscl/rh-python34/epel-$releasever-x86_64',
		os_versions => [ 6, 7 ],
		package_install => $packages,
	}
}