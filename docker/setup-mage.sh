#!/bin/sh
echo "Initializing setup..."

cd /src/www

find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;

chown -R :www-data .
chmod u+x bin/magentod

echo "composer install"
composer install

echo "setup"
php -d memory_limit=2G ./bin/magento setup:install \
    --db-host=$MAGE_SETUP_DB_HOST \
    --db-name=$MAGE_SETUP_DB_NAME \
    --db-user=$MAGE_SETUP_DB_USER \
    --db-password=$MAGE_SETUP_DB_PASSWORD \
    --base-url=$MAGE_SETUP_BASE_URL \
    --backend-frontname=$MAGE_SETUP_ADMIN_BACKEND_FRONTNAME \
    --admin-firstname=$MAGE_SETUP_ADMIN_FIRSTNAME \
    --admin-lastname=$MAGE_SETUP_ADMIN_LASTNAME \
    --admin-email=$MAGE_SETUP_ADMIN_EMAIL \
    --admin-user=$MAGE_SETUP_ADMIN_USER \
    --admin-password=$MAGE_SETUP_ADMIN_PASSWORD

find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
chown -R :www-data .

ls -la .

echo "Setup finished..."