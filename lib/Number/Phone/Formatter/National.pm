package Number::Phone::Formatter::National;

use strict;
use warnings;
use parent 'Number::Phone::Formatter';
use Scalar::Util qw(reftype);

sub format {
    my ($class, $number, $object) = @_;

    # Only care about the ones that will have the formatters stored
    return $number unless reftype $object eq 'HASH';

    $class->_format($object, 1);
}

1;

=head1 NAME

Number::Phone::Formatter::National - formatter for nationally-formatted phone number

=head1 DESCRIPTION

A formatter to output the number in its national format.

=head1 METHOD

=head2 format

This is the only method. It takes an E.123 international format string and a Number::Phone object,
and outputs the nationally-formatted number using any supplied formatters.

  +1 212 334 0611 -> 212-334-0611

=head1 AUTHOR, COPYRIGHT and LICENCE

Copyright 2018 Matthew Somerville E<lt>F<matthew-github@dracos.co.uk>E<gt>

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=cut
