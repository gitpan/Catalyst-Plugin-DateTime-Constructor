#!perl -T

use Test::More tests => 2;

BEGIN {
	use_ok( 'Catalyst::Plugin::DateTime' );
	use_ok( 'Catalyst::Plugin::DateTime::Constructor' );
}

diag( "Testing Catalyst::Plugin::DateTime::Constructor $Catalyst::Plugin::DateTime::Constructor::VERSION, Perl $], $^X" );
