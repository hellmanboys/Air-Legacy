#!/usr/bin/perl

# Made by Edoardo Mantovani, 2020
# test the lorcon_multi capability

use strict;
use warnings;
use Test;

BEGIN{ plan tests => 1 };

use Air::Lorcon2 qw( :lorcon );

my $loop = lorcon_multi_create(); # create multi_t object

sub print_ok(){
  ok(1);
  }
  
my $nmbrs = 10;

Air::Lorcon2::lorcon_multi_loop( $loop, $nmbrs, &print_ok(), \"this is only a try" );
ok(1);
