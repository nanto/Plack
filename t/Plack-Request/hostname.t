use strict;
use warnings;
use Test::More;
use Plack::Test;
use Plack::Request;

plan tests => 2;

my $req = Plack::Request->new({ REMOTE_HOST => "foo.example.com" });
is $req->hostname, "foo.example.com";

$req = Plack::Request->new({ REMOTE_HOST => '', REMOTE_ADDR => '127.0.0.1' });
is $req->hostname, "localhost";

