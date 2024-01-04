#!/usr/bin/perl
use strict;
use warnings;
use CGI;

print "Content-type: text/html\n\n";
print <<BLOCK;
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Resultado de la Consulta</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
BLOCK

my $cgi = CGI->new;
my $campo = $cgi->param('campo');
my $valor = $cgi->param('valor');


print <<BLOCK;
</body>
</html>
BLOCK