#!/bin/sh -l

composer i --prefer-dist

php -v

cp .env.example .env

php artisan key:generate

php artisan test --process-isolation


