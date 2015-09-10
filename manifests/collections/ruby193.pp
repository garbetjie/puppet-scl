class scl::collections::ruby193
(
	$packages = "ruby193"
)

{
	::scl::collection { "scl-ruby193":
		repo_descr => "SCL - Ruby 1.9.3 with Rails 3.2.8",
		repo_baseurl => 'https://www.softwarecollections.org/repos/rhscl/ruby193/epel-$releasever-x86_64',
		os_versions => [ 6, 7 ],
		package_install => $packages,
	}
}