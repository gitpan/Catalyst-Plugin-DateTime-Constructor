package Catalyst::Plugin::DateTime::Constructor;

use warnings;
use strict;
use base 'Catalyst::Plugin::DateTime';
use Catalyst::Exception;
use DateTime;

=head1 NAME

Catalyst::Plugin::DateTime::Constructor - DateTime plugin for Catalyst providinding some constructor.
This module use base 'Catalyst::Plugin::DateTime'.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  # In your application class
  use Catalyst qw/ DateTime::Constructor /;


  # Use DateTime objects within your Catalyst application:
  # These method return a DateTime object.
  my $dt = $c->datetime;# You can also use alias $c->dt in Catalyst::Plugin::DateTime.
  my $dt = $c->datetime( year => '1979', month => '08', day => '25' );
  my $dt = $c->from_epoch( epoch => $epoch_time );
  my $dt = $c->today;

  and so on.

=head1 Methods

=head2 from_epoch

  This method is equivalent to:

  DateTime->from_epoch( epoch => $epoch_time );

=cut

sub from_epoch {
    my $c    = shift;
    my %args = @_;
    my $tz   = delete $args{time_zone} || 'local';
    return DateTime->from_epoch( %args )->set_time_zone( $tz );
}

=head2 today

  This method is equivalent to:

  DateTime->today;

=cut

sub today {
    my $c  = shift;
    return DateTime->today;
}

=head2 from_object

  This method is equivalent to:

  DateTime->from_object( object => $object );

=cut

sub from_object {
    my $c    = shift;
    my %args = @_;
    return DateTime->from_object( %args );
}

=head2 from_day_of_year

  This method is equivalent to:

  DateTime->from_day_of_year( year => $year, day_of_year => $day_of_year );

=cut

sub from_day_of_year {
    my $c    = shift;
    my %args = @_;
    return DateTime->from_day_of_year( %args );
}

=head2 last_day_of_month

  This method is equivalent to:

  DateTime->last_day_of_month( year => $year, month => $month );

=cut

sub last_day_of_month {
    my $c    = shift;
    my %args = @_;
    return DateTime->last_day_of_month( %args );
}

=head1 SEE ALSO

L<DateTime>, L<Catalyst::Plugin::DateTime>

=head1 AUTHOR

Tomoyuki SAWA, C<< <Tomoyuki SAWA at cabane.no-ip.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-catalyst-plugin-datetime-constructor at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Catalyst-Plugin-DateTime-Constructor>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.


=head1 COPYRIGHT & LICENSE

    Copyright (c) 2006 the aforementioned author(s). All rights
    reserved. This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

=cut

1; # End of Catalyst::Plugin::DateTime::Constructor
