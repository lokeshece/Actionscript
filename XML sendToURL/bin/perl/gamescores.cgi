use strict;
use XML::Simple;
use CGI;
my $ScoreFile = "scores.txt";

my $input = XMLin(join(",<STDIN));

print CGI::header("text/xml");

open(SCORES,">>$ScoreFile")||(printMessage(0)&&die "Error opening $ScoreFile");

print SCORES join('|',$input->{username},$input->{score}),"\n";

printMessage(1);

sub printMessage{
    my $value = shift;
	my $message = {};
	$message->{success} = $value;
	print XMLout(message,keeproot=>1,rootname=>'success')
}