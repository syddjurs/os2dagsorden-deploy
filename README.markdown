Oprettelse af OS2Dagsorden løsning
==================================

Forudsætninger
--------------

* 0. En Ubuntu / Debian installation
* 1. En git konto med adgang til repositoriet. http://help.github.com/linux-set-up-git/ (vil være offentlig efter frigivelsen)
* 2. Drupal oprettelses script. /usr/local/sbin/create_site_with_db.php
(findes på https://github.com/os2web/create_site_with_db)
* 3. Os2web-deploy build filerne
* 4. Rettigheder til www-data (tilføjes med "sudo adduser [brugernavn] www-data). Husk at logge ud.
* 5. Drush make skal være installeret. http://drupal.org/project/drush_make
* 6. Apache 2.x with mod_rewrite
* 7. PHP 5.2.X and APC or XCache
* 8. MySQL 5.X
* 9. Opfylde http://drupal.org/requirements
* 10. PHP `memory_limit` must be at least `128M` (128MB)
* 11. PHP `max_execution_time` must be at least `60` (1 minute)

INSTALLATION
============

Ubuntu / Debian opsætning
-------------------------
sudo apt-get install apache2 php5 mysql-server phpmyadmin git-flow pwgen drush drush-make

Scripts
-------
* os2dagsorden_build.py til nye installationer eller en komplet pull
* reroll.sh bruges når der skal opdateres fra master branch i git
* dev-reroll.sh bruges når der skal opdateres fra udviklings branchen

Det udføres ved at man cd'er ind i diret og udfører kommandoen ./reroll.sh, dev-reroll.sh eller os2dagsorden_build.py

Oprettelse af site folder og database m.m.
------------------------------------------
Kør drupal oprettelses scriptet med angivelse af domane navnet på det site du vil oprette
HUSK: Du skal selv skrive dit mysql root kodeord ind i filen i variablen $mysqlpasswd

* SSH til serveren inclusiv din git nøgle "ssh -A [server_navn]"
* Udfør "cd /var/www/[sitenavn]
* Udfør "git clone https://github.com/OS2web/os2dagsorden-deploy.git"
* Udfør og ret kodeordet for mysql "vim ./create_site_with_db.php" og gem ved at trykke ESC og herefter :q! + ENTER
* Udfør "sudo mv ./create_site_with_db.php /usr/local/sbin/"
* Udfør "sudo chmod +x /usr/local/sbin/create_site_with_db.php"
* Udfør "sudo /usr/local/sbin/create_site_with_db.php eksempel.dk"

Deployment af koden fra GITHub
------------------------------

* SSH til serveren inclusiv din git nøgle "ssh -A [server_navn]"
* Udfør "cd /var/www/[sitenavn]
* Udfør "git clone https://github.com/OS2web/os2dagsorden-deploy.git"

Kør python scriptet fra det dir som filen ligger i os2dagsorden-deploy folderen

* Udfør: "python os2dagsorden_build.py -D os2dagsorden.dev.make"
* Udfør: "./reroll-dev.sh" - så vi får oprettet "latest" linket i /build/ folderen

Installer Drupal
----------------

Fra den nye site folder Installer Drupal 7 med drush /var/www/[sitenavn]/
Udfør: "drush dl drupal-7.x"
Udfør: "mv drupal-7.x-dev/ public_html"

Opret et symbolsk link til build folderen. 
Udfør: "cd public_html"
Udfør: "ln -s ../../os2dagsorden-deploy/build/latest profiles/os2dagsorden" (fra document / drupal root)

Gå på url'en og installer drupal færdig. Eller brug denne
Udfør: "drush site-install os2dagsorden --account-name=admin --account-pass=admin --db-url=mysql://[db_bruger]:[db_passwd]@localhost/[db]"

Proceduren er at reroll.sh bruges når prod sitet skal reetableres, eller hvis alt fra dev branch er blevet opdateret til master branch. 

Efter opdateringen køres [domane_navn]/update.php

HUSK: at aktivere de nødvendige features. 

Fejlfinding
===========

Build FAILED for mode "profile" drush
-----------------------------------------
Hvis du får denne fejl når du kører reroll.sh eller ....

Unable to clone
---------------

 >> Unable to clone cmstheme from git@github.com:syddjurs/cmstheme.git.
 >> Unable to clone os2web from git@github.com:syddjurs/os2web.git.
ERROR: Build FAILED for mode "profile" in folder "build/os2web-dev-201209041841" (18:43:44)
*Løsning* Installer drush_make som beskrevet ovenfor. 

Required modules not found
--------------------------

The following modules are required but were not found. Move them into the appropriate modules subdirectory, such as sites/all/modules. Missing modules: Features_tools,Devel_generate

*løsning* kør "drush dl ftools" og "drush dl devel" (evt. også "drush en ftools" og drush en devel")

Maximum execution time of xx seconds exceeded
---------------------------------------------

PHP Fatal error:  Maximum execution time of 30 seconds exceeded in /var/www-sydd/base/includes/bootstrap.inc on line 3265, 
*Løsning* Set max execution time til f.eks 600 i "/etc/php5/apache2/php.ini". "vim cat /etc/php5/apache2/php.ini"