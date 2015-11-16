package UNIVERSAL::to_yaml;

use warnings;
use strict;
use v5.8.0;
use Best [ qw(YAML::Syck YAML), qw(Dump) ];
our $VERSION = '0.10';

sub UNIVERSAL::to_yaml {
    Dump( $_[0] )
}


1;
__END__

=head1 NAME

UNIVERSAL::to_yaml - to_yaml() method for all objects.


=head1 VERSION

This document describes UNIVERSAL::to_yaml version 0.10

=head1 SYNOPSIS

    use UNIVERSAL::to_yaml;
    my $foo = Foo->new();
    print $foo->to_yaml();

=head1 DESCRIPTION

C<UNIVERSAL::to_yaml> tries to copy Ruby's to_yaml method after people
require 'yaml' module. It could works on objects, but it works on all
objects.

=head1 INTERFACE

=over

=item to_yaml()

This does a C<YAML::Dump()> to current object. Since it's put in
UNIVERSAL namespace, it will work on any module. You just have to use
UNIVERSAL::to_yaml somewhere in your code.

=back

=head1 DEPENDENCIES

You must have C<YAML> or C<YAML::Syck>
installed. C<UNIVERSAL::to_yaml> prefers later over former if you have
them both.

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to
C<bug-universal-to_yaml@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 AUTHOR

Kang-min Liu  C<< <gugod@gugod.org> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2006, Kang-min Liu C<< <gugod@gugod.org> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
