class scl::collections::python33
(
	$packages = "python33"
)

{
	::scl::collection { "scl-python33":
		repo_descr => "SCL - Python 3.3",
		repo_baseurl => 'https://www.softwarecollections.org/repos/rhscl/python33/epel-$releasever-x86_64',
		os_versions => [ 6, 7 ],
		package_install => $packages,
	}
}