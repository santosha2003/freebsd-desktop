#!/usr/local/bin/perl
	my $uri = 'https://ipv4.cloudns.net/api/dynamicURL/?q=-your-&proxy=1';

	use HTTP::Tiny;
	eval { HTTP::Tiny->can_ssl }
	or die "Please ensure you have HTTP::Tiny (>= 0.055) and IO::Socket::SSL";
	my $res = HTTP::Tiny->new()->get($uri);
	$res->{success} or die "$res->{status} $res->{reason}";
	print {*STDERR} "notification sent successfully" if $ENV{DEBUG};