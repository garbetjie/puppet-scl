# garbetjie-scl

## Warning

*Even though I am currently using this module, there are no tests set up for it yet. Please be aware that this module is
used at your own risk!*

## Overview

Manages [Software Collections](https://www.softwarecollections.org/) in RedHat/CentOS 6 & 7.

## Usage

### Install SCL (without registering any collections):

    include ::scl

### Register preset collections:

    include ::scl
    include ::scl::collections::python33
    include ::scl::collections::v8314

### Register custom collection:

    include ::scl
    ::scl::collection { 'reponame':
        repo_baseurl => 'http://example.com/repo',
        repo_descr => 'Repository description.',
        repo_ensure => 'present',
        repo_gpgcheck => 0,
        repo_enabled => 1,
        os_versions => [ 6, 7 ],
        package_install => [ 'packagename', 'packagename-*' ],
    }

## Available collections

* [Python 2.7.8](https://www.softwarecollections.org/en/scls/rhscl/python27/)
* [Python 3.3.2](https://www.softwarecollections.org/en/scls/rhscl/python33/)
* [Python 3.4.2](https://www.softwarecollections.org/en/scls/rhscl/rh-python34/)
* [Ruby 1.9.3 (with Rails 3.2.8)](https://www.softwarecollections.org/en/scls/rhscl/ruby193/)
* [V8 3.14.5.10](https://www.softwarecollections.org/en/scls/rhscl/v8314/)
