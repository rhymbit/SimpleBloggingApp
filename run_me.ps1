$env:FLASK_APP="flasky.py"
$env:FLASKY_ADMIN="prateekn332@gmail.com"
$env:MAIL_USERNAME="testingparashar@gmail.com"
$env:MAIL_PASSWORD="krishnaradha332"
echo "Environment Variables Created"
echo "*********************************************"
# these commands erase all the data inside database tables, and then reinitiailze it
flask db downgrade
echo "Purged database tables data"
flask db upgrade
echo "Initialised database for fresh data"
echo "*********************** Running Flask Application ***********************"
flask run