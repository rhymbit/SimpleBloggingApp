$env:FLASK_DEBUG="development"
echo "******** Debug Mode On **********"
./create_env_var.ps1
echo "*********************** Running Flask Application ***********************"
flask run