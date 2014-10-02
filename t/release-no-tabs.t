
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.06

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Net/HTTP/Spore.pm',
    'lib/Net/HTTP/Spore/Core.pm',
    'lib/Net/HTTP/Spore/Meta.pm',
    'lib/Net/HTTP/Spore/Meta/Class.pm',
    'lib/Net/HTTP/Spore/Meta/Method.pm',
    'lib/Net/HTTP/Spore/Meta/Method/Spore.pm',
    'lib/Net/HTTP/Spore/Meta/Types.pm',
    'lib/Net/HTTP/Spore/Middleware.pm',
    'lib/Net/HTTP/Spore/Middleware/Auth.pm',
    'lib/Net/HTTP/Spore/Middleware/Auth/Basic.pm',
    'lib/Net/HTTP/Spore/Middleware/Auth/Header.pm',
    'lib/Net/HTTP/Spore/Middleware/Auth/OAuth.pm',
    'lib/Net/HTTP/Spore/Middleware/DoNotTrack.pm',
    'lib/Net/HTTP/Spore/Middleware/Format.pm',
    'lib/Net/HTTP/Spore/Middleware/Format/Auto.pm',
    'lib/Net/HTTP/Spore/Middleware/Format/JSON.pm',
    'lib/Net/HTTP/Spore/Middleware/Format/XML.pm',
    'lib/Net/HTTP/Spore/Middleware/Format/YAML.pm',
    'lib/Net/HTTP/Spore/Middleware/LogDispatch.pm',
    'lib/Net/HTTP/Spore/Middleware/Mock.pm',
    'lib/Net/HTTP/Spore/Middleware/Redirection.pm',
    'lib/Net/HTTP/Spore/Middleware/Runtime.pm',
    'lib/Net/HTTP/Spore/Middleware/UserAgent.pm',
    'lib/Net/HTTP/Spore/Request.pm',
    'lib/Net/HTTP/Spore/Response.pm',
    'lib/Net/HTTP/Spore/Role.pm',
    'lib/Net/HTTP/Spore/Role/Debug.pm',
    'lib/Net/HTTP/Spore/Role/Description.pm',
    'lib/Net/HTTP/Spore/Role/Middleware.pm',
    'lib/Net/HTTP/Spore/Role/Request.pm',
    'lib/Net/HTTP/Spore/Role/UserAgent.pm'
);

notabs_ok($_) foreach @files;
done_testing;
