set exclusive off
set deleted on
set date ansi
set century on
set talk off
set escape off
set stat off
set score off
set confirm on
set console on
set bell off
set softseek on

@ 0,0 clear

xxparag=.f.
xdate=dtos(date()-30)

? "Wyszukiwanie niezatwierdzonych paragonow z ostatnich 30 dni - od "+xdate
? "zoon@lu.onet.pl v.20210709"
use faktury index fakturyd.ntx
find &xdate
do while !EOF()
  if subs(rodzfa,2,1)='F'.and.!fiskus
    xxparag=.t.
    ? "Niezatwierdzony dokument fiskalny z "+dtoc(datafak)+": "+faktura+"!!!"
  endif
  skip
enddo
close all

if xxparag
  wait
endif
quit
