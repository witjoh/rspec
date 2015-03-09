# puppet-module-rspec
===

[![Build Status](https://travis-ci.org/witjoh/puppet-module-rspec.png?branch=master)](https://travis-ci.org/witjoh/puppet-module-rspec)

Some simple rspec examples, mainly to learn how to write rspec tests for some specific puppet DSL constructs.

# Compatibility
---------------
See the bundle file.  My puppet module skeleton is basesd this one :
https://github.com/ghoneycutt/puppet-module-skeleton.git

# how to run
------------

* bundle exec install
* STRINGIFY_FACTS=no FUTURE_PARSER=yes bundle exec rake spec (only once)
* STRINGIFY_FACTS=no FUTURE_PARSER=yes bundle exec rake spec_standalone
