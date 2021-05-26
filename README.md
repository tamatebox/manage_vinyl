# Manage Vinyl APP
This tool enables you to manage your Vinyl on MySQL.

## First
You need to change /config/database.yml.sample to /config/database.yml and change your own MySQL's username and password.


## Requirements
Rails  version 13.0.3

MySQL  Ver 8.0.25

## Usage

```
$ bundle install --without production
$ rails db:migrate
$ rails test
$ rails server
```
