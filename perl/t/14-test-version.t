# Made by Edoardo Mantovani, 2020
# see if lorcon is installed by checking the "get_version" func, this will return the constant LORCON_VERSION

use Test;
use strict;
use warnings;

BEGIN { plan tests => 1 };

use Air::Legacy qw(:lorcon);
my $version = lorcon_get_version(); 


ok(1);
