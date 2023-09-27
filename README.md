# Migration Demo Site

This repository contains scaffolding for a demo environment to use while working through some of the tutorials in the Drupalize.Me [Migrate to Drupal 9 or 10 course](https://drupalize.me/series/drupal-migrate).

It contains configuration to run Drupal locally in [DDEV](https://github.com/drud/ddev) or in the cloud on [Gitpod](https://www.gitpod.io/).

## DDEV - localhost setup

Assuming you have [Docker installed](https://ddev.readthedocs.io/en/stable/users/docker_installation/), and [DDEV-Local installed](https://ddev.readthedocs.io/en/stable/#installation).

- Clone this repo
- Run the following commands from the root directory of the repo

```shell
ddev start
ddev composer install
ddev drush site:install -y
ddev import-db --src=backup.sql.gz
ddev drush deploy -y

# This sets up a new database in the DDEV db container named lahmansbaseballdb
# that contains some sample data.
# This will download a copy of the MySQL data for the Lahman baseball statistics
# database and import it into DDEV in a new db named 'baseball'. Take a look
# at the code if you're unsure about running random scripts. :)
./scripts/setup-baseball-data.sh
```

The default admin user is admin/admin. Or you can reset it with `ddev drush uli`.
