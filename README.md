<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

Interfejs REST API pozwalający na pobieranie badań laboratoryjnych, zaprojektowany za pomocą frameworka Laravel 9.

Projekt można uruchomić na lokalnym serwerze np. przy użyciu pakietu XAMPP: https://www.apachefriends.org/pl/index.html

Serwer musi spełniać wszystkie wymagania podane na stronie https://laravel.com/docs/9.x/deployment#server-requirements

Do projektu dołączony został plik "upacjenta.sql" z dumpem przykładowej bazy danych obejmującej trzy kategorie badań, z których każda zawiera po dwa badania.

Domyślna konfiguracja bazy danych:

DB_CONNECTION=mysql<br>
DB_HOST=127.0.0.1<br>
DB_PORT=3306<br>
DB_DATABASE=upacjenta<br>
DB_USERNAME=root<br>
DB_PASSWORD=

API można przetestować np. w aplikacji Postman: https://www.postman.com/

Dostępne operacje:

![obraz](https://user-images.githubusercontent.com/32549854/157119256-f857607d-cd40-4ec5-ba68-14dd35363ee9.png)

Adres przykładowego żądania dla metody GET:

localhost/upacjenta/public/api/kategoriaBadan/1


