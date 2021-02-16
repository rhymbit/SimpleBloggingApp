from flasky import app
from flask_migrate import upgrade
from app.models import Role, User

@app.cli.command("deploy")
def deploy():
    """Run deployment tasks."""
    # migrate database to latest version
    upgrade()

    # create or update user roles
    Role.insert_roles()
    
    # ensure all users are following themselves
    User.add_self_follows()