## 2.16.0
* Security updated Drupal core to 8.5.15.

## 2.15.0
* Security updated Drupal core to 8.5.14 (SA-CORE-2019-004).

## 2.14.0
* Updated Drupal core to 8.5.12.

## 2.13.0
* Security updated Drupal core to 8.5.11. (SA-CORE-2019-003)

## 2.12.0
* Security updated Drupal core to 8.5.9. (SA-CORE-2019-001, SA-CORE-2019-002)

## 2.11.0
* Security updated Drupal core to 8.5.8.

## 2.10.0
* Updated Drupal core to 8.5.7.
* Remove core patch "Add support to migrate multilingual revisions" since it's
  in 8.5.7. (#2921661)
* Add schema_metatag as a dev dependency so that Metatag PHPUnit tests are
  discoverable
* Stop testing with exported config.

## 2.9.0
* Fixed a bug where administrative roles were shipped with null values for the
  'is_admin' flag. (Issue #2882197)
* The Basic Page content type now supports Pathauto out of the box. (#74)
* Fixed a bug where the Basic Page content type would not work with workflows
  out of the box. (Issue #2990048)

## 2.8.0
* Security updated Drupal core to 8.5.6.
* Fixed a bug where user 1 could not access Lightning's administrative screens.
  (Issue #2933520)
* Lightning Page now enables moderation if Lightning Workflow is installed, not
  Content Moderation. (Issue #2984737)
* Lightning Roles now has an explicit dependency on the Node module.
  (Issue 2984738)
* Removed defunct default configuration from bundled Search API database
  backend. (#70)

## 2.7.0
* Updated Drupal core to 8.5.4.
* Drush updb failure from drush_lightning_core_pre_updatedb (Issue #2972217)
* Tests: "When I visit" step definition is too general (Issue #2955092)

## 2.6.0
* Added a Drush 9 command hook which will clear all cached plugin definitions before
  database updates begin. (GitHub #55)

## 2.5.0
* Security updated Drupal core to 8.5.3.

## 2.4.0
* Security updated Drupal core to 8.5.2.

## 2.3.0
* Fixed an incompatibility with Search API which would cause fatal errors under
  certain circumstances. (Issue #2961547 and GitHub #46)
* The Basic page content type provided by Lightning Page will now be moderated
  only if and when Content Moderation is installed. (GitHub #40)
* Lightning Core is now compatible with Drupal Extension 3.4 or later only.
  (GitHub #43 and #44)

## 2.2.0
* Security updated Drupal core to 8.5.1. (SA-2018-002)
* When renaming the configuration which stores extension's version numbers,
  Lightning Core will no longer assume configuration by the same name does not
  already exist. (Issue #2955072)

## 2.1.0
* Behat contexts used for testing were moved into the
  `Acquia\LightningExtension\Context` namespace.

## 2.0.0
* Updated core to 8.5.x.

## 1.0.0-rc3
* Fixed a problem in the 8006 update that caused problems for users that had an
  existing `lightning.versions` config object.

## 1.0.0-rc2
* Behat contexts used for testing have been moved into Lightning Core.
* The `lightning.versions` config object is now `lightning_core.versions`.

## 1.0.0-rc1
* The `update:lightning` command can now be run using either Drupal Console or
  Drush 9.
* Component version numbers are now recorded on install (and via an update hook
  on existing installations) so that the `version` argument is no longer needed
  with the `update:lightning` command.

## 1.0.0-alpha3
* Updated core to 8.4.4.