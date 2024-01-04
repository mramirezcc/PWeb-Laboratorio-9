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

my $aux;
if(!($valor eq "")){
  open(IN,"../data/ProgramasDeUniversidades.csv") or die "<h1>Error al abrir el archivo.</h1>\n";
  while(my $line = <IN>){
    my %dict = matchLine($line);
    my $result = $dict{$kind};
    if(defined($result) && $result =~ /.*$keyword.*/){
      print "<h1>Encontrado: $line</h1>\n";
      $aux = 1;
      next;
    }
  }
  close(IN);
}
print <<BLOCK;
</body>
</html>
BLOCK