#!/usr/bin/perl

# Made by Edoardo Mantovani, 2020
# simple test program for inspection utilities

use strict;
no strict 'subs';
use Test;

BEGIN{ plan tests => 3 };

use Air::Lorcon2 qw( :lorcon );
use Net::Pcap qw( pcap_lookupdev );

my $lcpa = lcpa_init();

# Net::Pcap runtimes

my $pcap_err = '';
my $pcap_device = pcap_lookupdev( \$pcap_err );


# Air::Lorcon2 runtimes

my $context = lorcon_create( $pcap_device, "mac80211" );

if( undef( $context ) ){
  ok(0);
}else{
  ok(1);
}

# craft an empty packet

my $Packet = lorcon_packet_from_lcpa( $context, $lcpa );

if( undef( $Packet ) ){
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_dot11_extra( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_dot3_extra( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_source_mac( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_dest_mac( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_bssid_mac( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_llc_type( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}

if( ! lorcon_packet_get_interface( $Packet ) ) {
  ok(0);
}else{
  ok(1);
}