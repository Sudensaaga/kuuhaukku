# Kuuhaukun kennelin kotisivut
Artikkeleiden ja kuvien copyright Jaana Sudensaaga.


## Yläpalkin menut, perustiedot

_config.yml

Menujen otsikko ja id asetetaan alisivut-hakemiston tiedostoissa.


## Kuvien lisääminen

* .jpg muotoisina
* nimi kirjoitettuna pienillä kirjaimilla, ei ääkkösiä, ei välilyöntejä

Tarkista kuvan koko, saisi olla alle 400 KB

### Kuvasuhteet

* **Artikkelin iso kuva:** Vapaa kuvasuhde, leveys 800-1000 pikseliä
* **Linkkikuvat:** 1:1, 102/102 px tai 125/125px
* **Kolme-esiin kuvat:** 12:5, 240/100 px tai hieman isompi

## Tekstien muuttaminen

.md-tiedostot käyttävät Markdown-kieltä. Ohjeet komentoihin täällä:
[Markdown-ohje](https://github.com/akx/markdown-cheatsheet-fi/blob/master/Markdown-Ohje.md)

## Testaa omalla koneella

Toimii vain jos Gemfile-tiedostossa mainittu Ruby ja modulit on asennettu omalle koneelle.

~~~bash
jekyll serve --livereload --incremental
~~~

