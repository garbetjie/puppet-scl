class scl::collections::v8314
(
    $packages = 'v8314'
)

{
    ::scl::collection { 'scl-v8314':
        repo_descr      => 'SCL - V8 3.14.5.10',
        repo_baseurl    => 'https://www.softwarecollections.org/repos/rhscl/v8314/epel-$releasever-x86_64',
        os_versions     => [ 6, 7 ],
        package_install => $packages,
    }
}