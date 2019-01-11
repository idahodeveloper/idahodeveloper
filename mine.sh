#!/bin/sh
cd /home/idahodeveloper/src/idahodeveloper/;
echo `date +%Y%m%d%H%M%S`;
time echo `date +%Y%m%d%H%M%S` > touchme;
time cat composer.json > run;
time composer outdated >> run;
time composer outdated drupal/* >> run;
time rm composer.lock;
time composer update drupal/* composer/installers webflo/drupal-core-strict --with-dependencies >> run;
time git status >> run;
time git add .;
time git commit -m "update everything and touch if necessary";
time git pull origin master --strategy-option=theirs;
time git push origin master;

