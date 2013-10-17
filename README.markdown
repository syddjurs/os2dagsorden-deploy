Further documentation can be found here https://github.com/OS2web/os2web-deploy/wiki


Installation
---------------

Drupal Version: 7.22
Drush Version: 5.8

Install an OS2Dagsorden Installation via .make

1. Install Drush http://drupal.org/projects/drush
2. `cd [site dir]`
3. `drush dl drupal-7.23 --drupal-project-rename=public_html`
4. `git clone http://github.com/bellcom/os2dagsorden-deploy.git`
5. `cd public_html/profiles`
6. `ln -s ../../os2dagsorden-deploy/build/dev-latest os2dagsorden`

Reroll the modules and contrib modules specified in os2dagsorden.make:

7. `cd ../../os2dagsorden-deploy`
8. `./reroll.dev.sh`

If you need a custom os2dagsorden installation with your own profile. The recommended approach is to fork this repo.

Developers!!
---------------

Build by using the dev version of the build script.
  - Note that if you reroll a dev build, the folder would be `dev-latest` instead of `master-latest`

`./reroll.dev.sh` generates a working copy of the git repos. Very good when developing. It includes all modules and setup as the turnkey.

Using the developers version of reroll, all branches of os2dagsorden modules should be develop. Note that, because of the recursive make build, os2dagsorden modules made by other .make files will get the master branch.

Overview of the directory map
---------------

`[site]`
   - `[public_html]`
       - `[profiles]`
           - `[os2dagsorden]` (`symlink ../../os2dagsorden-deploy/os2dagsorden`)
   - `[os2dagsorden-deploy]`
       - `[build]`
           - `[master-latest]`
               - `[modules]`
                   - `[contrib]`
                   - `...`
               - `[libraries]`
               - `[themes]`


Configuration of install profile
---------------
OS2Dagsorden modules:
- os2dagsorden_access_helper
- os2dagsorden_adlib_api
- os2dagsorden_annotator
- os2dagsorden_ical_meetings_export
- os2dagsorden_importer
- os2dagsorden_print_meetings
- os2dagsorden_pdf2htmlex
- acadre_eshd
- os2web_esdh_provider
- os2web_print_send_to_friend
- - And their dependents

OS2Web features:
- os2web_settings

OS2Dagsorden features:
- os2dagsorden_ad_integration
- os2dagsorden_automated_logout_configuration
- os2dagsorden_block_positioning
- os2dagsorden_content_types
- os2dagsorden_front_page_feature
- os2dagsorden_front_page_views
- os2dagsorden_meetings_calendar_view
- os2dagsorden_meeting_views
- os2dagsorden_rules_and_permissions
- os2dagsorden_settings
- os2dagsorden_sidepane_menu
- os2dagsorden_ultimate_cron_configuration

List of OS2Dagsorden modules: (In alphabetic order)
---------------

Modules:
- [acadre_esdh](https://github.com/OS2web/os2dagsorden/tree/dev/acadre_esdh)
- [os2dagsorden_access_helper](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_access_helper)
- [os2dagsorden_adlib_api](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_adlib_api)
- [os2dagsorden_admin_suite](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_admin_suite)
- [os2dagsorden_annotator](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_annotator)
- [os2dagsorden_content_modify](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_content_modify)
- [os2dagsorden_create_agenda](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_create_agenda)
- [os2dagsorden_ical_meetings_export](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_ical_meetings_export)
- [os2dagsorden_importer](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_importer)
- [os2dagsorden_pdf2htmlex](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_pdf2htmlex)
- [os2dagsorden_print_meetings](https://github.com/OS2web/os2dagsorden/tree/dev/os2dagsorden_print_meetings)
- [os2web_edoc_esdh](https://github.com/OS2web/os2dagsorden/tree/dev/os2web_edoc_esdh)
- [os2web_esdh_provider](https://github.com/OS2web/os2dagsorden/tree/dev/os2web_esdh_provider)
- [os2web_print_send_to_friend](https://github.com/OS2web/os2dagsorden/tree/dev/os2web_print_send_to_friend)
- [os2web_sbsys_esdh](https://github.com/OS2web/os2dagsorden/tree/dev/os2web_sbsys_esdh)

Features:
- [os2dagsorden_ad_integration](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_ad_integration)
- [os2dagsorden_automated_logout_configuration](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_automated_logout_configuration)
- [os2dagsorden_blocks_positioning](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_blocks_positioning)
- [os2dagsorden_content_types](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_content_types)
- [os2dagsorden_front_page_feature](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_front_page_feature)
- [os2dagsorden_front_page_views](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_front_page_views)
- [os2dagsorden_meeting_views](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_meeting_views)
- [os2dagsorden_meetings_calendar_view](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_meetings_calendar_view)
- [os2dagsorden_rules_and_permissions](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_rules_and_permissions)
- [os2dagsorden_settings](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_settings)
- [os2dagsorden_sidepane_menu](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_sidepane_menu)
- [os2dagsorden_ultimate_cron_configuration](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2dagsorden_ultimate_cron_configuration)
- [os2web_settings](https://github.com/OS2web/os2dagsorden/tree/dev/features/os2web_settings)
