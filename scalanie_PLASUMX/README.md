Na spotkaniu partnerów 19-20 IV 2000 r. padła propozycja wrzucania wszystkich innych potrąceń/przychodów do jednego pliku (aby łatwiej tworzyć na tej podstawie księgowania).
Oto mikro-programik wrzucający to wszystko do pliku plasumx.dbf w wersji 1.1 - poprawki dotyczą obsługi błedów braku pliku z innymi potrąceniami (zdarza się) oraz skasowanych rekordów.
Do uruchomienia potrzebny jest FOX.
Jako słownik kont proponuję ostatnie znaki nazwy typu przychodu/potrącenia (typy.dbf; klucz relacji: wsk+rodzaj+typ). Przykładowe algorytmy wykorzystujące utworzone pliki znajdują się w pliku alginnep.arj 