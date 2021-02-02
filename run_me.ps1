$env:FLASK_APP="flasky.py"  
$env:FLASKY_ADMIN="prateekn332@gmail.com"
$env:MAIL_USERNAME="testingparashar@gmail.com"
$env:MAIL_PASSWORD="krishnaradha332"
echo "Environment Variables Created"
echo "*********************************************"
./create_fresh_database.ps1
echo "*********************************************"
echo "Created a new database"
echo "*********************** Running Flask Application ***********************"
flask run