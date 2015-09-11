class scl::collections::python27
(
    $packages = 'python27'
)

{
    ::scl::collection { 'scl-python27':
        repo_descr      => 'SCL - Python 2.7.8',
        repo_baseurl    => 'https://www.softwarecollections.org/repos/rhscl/python27/epel-$releasever-x86_64',
        os_versions     => [ 6, 7 ],
        package_install => $packages,
    }
}