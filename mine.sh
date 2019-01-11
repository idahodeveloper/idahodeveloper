!#/bin/sh
cd /home/idahodeveloper/src/idahodeveloper/;
echo `date +%Y%m%d%H%M%S`;
time echo `date +%Y%m%d%H%M%S` > touchme;
time cat composer.json;
time composer outdated;
time composer outdated drupal/*;
time rm composer.lock;
time composer update drupal/* composer/installers webflo/drupal-core-strict --with-dependencies;
time git status;
time git add .;
time git commit -m "update everything and touch if necessary";
time git pull;
time git push;

