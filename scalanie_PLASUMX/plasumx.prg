set talk off
set escape off
set stat off
set score off
set confirm on
* poprawka: rekordy skasowane nie sa czyszczone!
set deleted on

on error quit

clear

? 'Scalanie wszystkich innych przychodow/potracen do pliku PLASUMX.DBF v 1.1'
? 'Po spotkaniu Partnerow GPS w Gdyni 19-20 IV 2000r zakodowal'
? 'Z. Niedzwiedz, Omega Computer Lublin (zoon@lu.onet.pl)'
? '* Freeware *'
?

delete file plasumx.dbf

select 2
use nagllp

nazwa='l'+rrmm+trim(slp)+'_'
? recno(), 'Scalam: '+nazwa
skip

select 1
use &nazwa

copy all to plasumx
use plasumx

select 2

do while !EOF()
  nazwa='l'+rrmm+trim(slp)+'_'
  ? recno(), 'Scalam: '+nazwa
  select 1
    * poprawka: plik byc moze nie istnieje... nie to nie
    if file(nazwa+'.dbf')
      append from &nazwa
      ?? ' - plik istnieje...'
    endif
  select 2
*  wait
  skip
enddo

close all

?
? 'Przetwarzanie zakonczone pomyslnie...'

wait 'Nacisnij dowolny klawisz...'

quit
