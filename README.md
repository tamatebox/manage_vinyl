# Manage Vinyl APP
This tool enables you to manage your Vinyl on MySQL.

## First
You need to change /config/database.yml.sample to /config/database.yml and change your own MySQL's username and password.


## Requirements
Rails  version 13.0.3

MySQL  Ver 8.0.25

## Usage (Local)

### Start

#### First Time

```
$ bundle install --without production
$ rails db:migrate
$ rails test
$ mysql.server start
$ rails server
```

##### Second time or later

```
$ mysql.server start (if you need)
$ rails server
```

And go to 

http://localhost:3000/vinyls

