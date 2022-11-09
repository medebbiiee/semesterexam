#!/usr/bin/bash
cd /var/www/Schoolproject/laravel

echo '<?php

 use Illuminate\Support\Facades\Route;

 Route::get("/", function () {
     return view("welcome");
 });' > /var/www/Schoolproject/laravel/routes/web.php

chown -R www-data:www-data /var/www/Schoolproject/laravel

chmod -R 777 /var/www/Schoolproject/laravel

touch .env

echo 'APP_NAME=DebsProject
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://
APP_PORT=3000

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=Examproject
DB_USERNAME=Examproject
DB_PASSWORD=altschool

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="hello@example.com"
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

L5_SWAGGER_GENERATE_ALWAYS=true
SAIL_XDEBUG_MODE=develop,debug
SAIL_SKIP_CHECKS=true
' > .env

chown -R www-data:www-data /var/www/Schoolproject/laravel

chmod -R 777 /var/www/Schoolproject/laravel
