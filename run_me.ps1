$env:FLASK_DEBUG="development"
echo "******** Debug Mode On **********"
./create_env_var.ps1
echo "*********************************************"
./create_fresh_database.ps1
echo "*********************************************"
echo "Created a new database"
echo "*********************** Running Flask Application ***********************"
flask run