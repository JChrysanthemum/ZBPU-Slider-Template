use Cwd qw(abs_path);
use File::Path qw(make_path);

make_path('minted-cache') unless -d 'minted-cache';

$pdf_mode = 5;
$out_dir = '.';
$aux_dir = '.';
$ENV{'TEXMF_OUTPUT_DIRECTORY'} = abs_path('.');
$ENV{'TEXMFOUTPUT'} = abs_path('.');
$pdflatex = 'xelatex -shell-escape -8bit -interaction=nonstopmode %O %S';