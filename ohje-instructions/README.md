# Kuuhaukun Kennel's Web Site

![siperianhusky-koiravaljakko](../images/siperianhusky-koiravaljakko.jpg)

**Jaana Sudensaaga holds the copyright for all graphic content, photos and articles** in this repository. Possible other copyright holders are mentioned in the relevant articles.

This repository is public to encourage Siperianpystykorva-86 ry's people and kennel's puppy-owners to help with the maintenance. 

This is a Jekyll-based website with Bootstrap 4 custom theme. We have implemented several things to help non-technical people update the articles. You can use the code here to learn how to implement:

- Dynamic menus that can be defined in YAML frontmatter and `_config.xml`
- Menu pages that automatically fill in links to the related articles
- Order for automatically filled link pages
- Layouts with image sidebar that can be populated in YAML frontmatter



If you're here to help, that's wonderful! Please [read these general instructions first](_read-this-first.md).



## Väliaikaisen sivun osoite
https://sudensaaga.github.io/kuuhaukku

## Artikkelien muuttaminen 

Suomeksi hakemistossa [artikkelit](https://github.com/kulmala/kuuhaukku/tree/master/artikkelit). 

Englanniksi hakemistossa [en](https://github.com/kulmala/kuuhaukku/tree/master/en)

Voit tehdä alihakemistoja tarpeen mukaan.

## Yläpalkin menut, perustiedot

Muuta tiedostosta [_config.yml](https://github.com/kulmala/kuuhaukku/blob/master/_config.yml)

Menujen title ja tunniste asetetaan 
hakemiston [alisivut](https://github.com/kulmala/kuuhaukku/tree/master/alisivut) tiedostoissa.

Englanninkieliset menut asetetaan hakemiston
[en-alisivut](https://github.com/kulmala/kuuhaukku/tree/master/en-alisivut) tiedostoissa.


## Kuvien lisääminen

Kuvat lisätään hakemistoon [images](https://github.com/kulmala/kuuhaukku/tree/master/images) käyttämällä 
yläpalkin "Upload files"-nappia.


* .jpg muotoisina
* nimi kirjoitettuna pienillä kirjaimilla, ei ääkkösiä, ei välilyöntejä

Kuvan koko saisi mielellään olla alle 400KB.

Voit tehdä alihakemistoja tarpeen mukaan.

### Kuvasuhteet

* **Artikkelin iso kuva:** Vapaa kuvasuhde, leveys 800-1000 pikseliä
* **Linkkikuvat:** 1:1, 102/102 px tai 125/125px
* **Kolme-esiin kuvat:** 12:5, 240/100 px tai hieman isompi

### Kuvan lisääminen artikkeliin

~~~bash
![sokeille näkyvä teksti](images/kuvannimi.jpg)
~~~

Jos haluat kuvan yhteyteen tekstin, se tehdään näin:

~~~bash
![sokeainteksti](images/hakemistonnimi/kuvannimi.jpg)
*kuvateksti tähän*
~~~

Esimerkki:

~~~bash
![vanha siperianhuskyvaljakko](images/vanha-siperianhuskyvaljakko.jpg)
*Old line® valjakko-ajoa 70-luvulla*
~~~


## Tekstien muuttaminen

.md-tiedostot käyttävät Markdown-kieltä. Ohjeet komentoihin täällä:
[Markdown-ohje](https://github.com/akx/markdown-cheatsheet-fi/blob/master/Markdown-Ohje.md)

## Testaa omalla koneella

Toimii vain jos Gemfile-tiedostossa mainittu Ruby ja modulit on asennettu omalle koneelle.

~~~bash
jekyll serve
~~~

