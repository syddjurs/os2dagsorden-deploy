api = 2
core = 7.x

;includes[custom] = os2dagsorden.custom.make

; OS2Dagsorden modules
projects[os2web][type] = "module"
projects[os2web][download][type] = "git"
projects[os2web][download][url] = "git://github.com/syddjurs/os2dagsorden.git"
projects[os2web][download][revision] = "dev"

; OS2Dagsorden Theme
projects[os2dagsorden_theme][type] = "theme"
projects[os2dagsorden_theme][download][type] = "git"
projects[os2dagsorden_theme][download][url] = "git://github.com/bellcom/os2dagsorden-theme.git"
projects[os2dagsorden_theme][download][revision] = "dev"

projects[os2dagsorden_theme_syddjurs][type] = "theme"
projects[os2dagsorden_theme_syddjurs][download][type] = "git"
projects[os2dagsorden_theme_syddjurs][download][url] = "git://github.com/syddjurs/os2dagsorden-theme.git"
projects[os2dagsorden_theme_syddjurs][download][revision] = "dev"


; OS2Web theme base
projects[omega][subdir] = "contrib"
projects[omega][version] = "3.x-dev"

; OS2Dagsorden libraries
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[qtip][download][type] = "get"
libraries[qtip][download][url] = "http://vadikom.com/files/poshytip/poshytip-1.1.zip"
libraries[qtip][directory_name] = "poshy_tip"
libraries[qtip][destination] = "libraries"

libraries[print][download][type] = "get"
libraries[print][download][url] = "https://github.com/downloads/dompdf/dompdf/dompdf_0-6-0_beta3.zip"
libraries[print][directory_name] = "dompdf"
libraries[print][destination] = "libraries"

libraries[jquery_colorpicker][download][type] = "get"
libraries[jquery_colorpicker][download][url] = "http://www.eyecon.ro/colorpicker/colorpicker.zip"
libraries[jquery_colorpicker][directory_name] = "colorpicker"
libraries[jquery_colorpicker][destination] = "libraries"

; OS2Dagsorden contrib modules
projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = "1.0"

projects[front][subdir] = "contrib"
projects[front][version] = "2.1"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.0"

projects[context][subdir] = "contrib"
projects[context][version] = "3.0-beta3"

projects[calendar][subdir] = "contrib"
projects[calendar][version] = "3.0"

projects[date][subdir] = "contrib"
projects[date][version] = "2.5"
projects[date][patch][] = "https://drupal.org/files/date-views-default-arg-options-1202248-16.patch"

projects[features][subdir] = "contrib"
projects[features][version] = "1.0"

projects[features_extra][subdir] = "contrib"
projects[features_extra][version] = "1.0-alpha1"

projects[ftools][subdir] = "contrib"
projects[ftools][version] = "1.5"

projects[computed_field][subdir] = "contrib"
projects[computed_field][version] = "1.0-beta1"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.0-rc3"

projects[autologout][subdir] = "contrib"
projects[autologout][version] = "4.x-dev"
;projects[autologout][patch][] = "http://drupal.org/files/autologout-7.x-2.x-dev-fix_own_mesg_on_logout.patch"

projects[background_process][subdir] = "contrib"
projects[background_process][version] = "1.13"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.0-rc3"

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.0"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0-rc2"

projects[prepopulate][subdir] = "contrib"
projects[prepopulate][version] = "2.x-dev"

projects[progress][subdir] = "contrib"
projects[progress][version] = "1.4"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[ultimate_cron][subdir] = "contrib"
projects[ultimate_cron][version] = "1.7"

projects[print][subdir] = "contrib"
projects[print][version] = "1.1"

projects[rules][subdir] = "contrib"
projects[rules][version] = "2.3"

projects[delta][subdir] = "contrib"
projects[delta][version] = "3.0-beta11"

projects[file_lock][subdir] = "contrib"
projects[file_lock][version] = "2.x-dev"

projects[omega_tools][subdir] = "contrib"
projects[omega_tools][version] = "3.0-rc4"

projects[ckeditor][subdir] = "contrib"
projects[ckeditor][version] = "1.9"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.2"

projects[poshy_tip][subdir] = "contrib"
projects[poshy_tip][version] = "1.0-beta2"

projects[views][subdir] = "contrib"
projects[views][version] = "3.5"
;projects[views][patch][] = "http://drupal.org/files/1538702-patch-and-tests.patch"
projects[views][patch][] = "https://raw.github.com/OS2web/os2dagsorden/dev/patches/story_319638-using-multiple-contextual-filters.patch"

projects[views_php][subdir] = "contrib"
projects[views_php][version] = "1.x-dev"
projects[views_php][patch] = "https://drupal.org/files/views_php-access_fix-1381562.patch"

projects[better_exposed_filters][subdir] = "contrib"
projects[better_exposed_filters][version] = "3.0-beta1"

projects[edit_own_user_account_permission][subdir] = "contrib"
projects[edit_own_user_account_permission][version] = "2.0-beta1"

projects[simplify][subdir] = "contrib"
projects[simplify][version] = "3.0"

projects[smtp][subdir] = "contrib"
projects[smtp][version] = "1.0"

projects[lightbox2][subdir] = "contrib"
projects[lightbox2][version] = "1.0-beta1"

projects[jquery_colorpicker][subdir] = "contrib"
projects[jquery_colorpicker][version] = "1.0-rc2"

; LDAP
projects[ldap][subdir] = "contrib"
projects[ldap][version] = "1.0-beta11"

; Themes
projects[rubik][version] = "4.0-beta8"

; Translation file
libraries[translation][download][type] = "get"
libraries[translation][download][url] = "https://raw.github.com/OS2web/os2dagsorden-deploy/master/da.po"
libraries[translation][directory_name] = "translations"
libraries[translation][destination] = ""
