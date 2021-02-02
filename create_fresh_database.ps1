rm data-dev.sqlite
rmdir migrations -R
flask db init
flask db migrate -m "initial commit"
flask db upgrade