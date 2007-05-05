package Text::VisualWidth::EUC_JP;
use 5.006;
use strict;
use warnings;
use Text::VisualWidth;

sub width {
    my $str = shift or return 0;
    return xs_get_visualwidth_eucjp($str);
}

sub trim {
    my $str = shift or return "";
    my $length = shift or return $str;
    return xs_trim_visualwidth_eucjp($str, $length);
}

1;
__END__

=head1 NAME

Text::VisualWidth::EUC_JP - Perl extension for Triming EUC-JP text by the number of the columns of terminals and mobile phones.

=head1 SYNOPSIS

  use Text::VisualWidth::EUC_JP;
  my $length = Text::VisualWidth::EUC_JP::width($str);
  my $str    = Text::VisualWidth::EUC_JP::trim($str, 20);

=head1 AUTHOR

Takaaki Mizuno, E<lt>module@takaaki.infoE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Takaaki Mizuno

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
