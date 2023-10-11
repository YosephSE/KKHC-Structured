from flask import Flask

# Initialize flask
app = Flask(__name__)
app.config['SECRET_KEY'] = 'TzALB4eJ89*Ib!bn0aH28w9MFSy2iuu1!0olxkHADk2gq&PpMQ'
app.config['SESSION_COOKIE_NAME'] = 'ID'
# app.config['SESSION_COOKIE_SECURE'] = True 
# app.config['SESSION_COOKIE_HTTPONLY'] = True
# app.config['SESSION_COOKIE_SAMESITE'] = 'Lax'
# app.config['SESSION_PERMANENT'] = False
# # Connect to MYSQL database
app.config['MYSQL_HOST'] = 'sql8.freesqldatabase.com'
app.config['MYSQL_USER'] = 'sql8652519'
app.config['MYSQL_DB'] = 'sql8652519'
app.config['MYSQL_PASSWORD'] = 'hZwh2BkMLU'
# app.config['MYSQL_PORT'] = 3306
# app.config["MYSQL_HOST"] = "localhost"
# app.config["MYSQL_USER"] = "Yoseph"
# app.config["MYSQL_PASSWORD"] = "1212"
# app.config["MYSQL_DB"] = "kkhc"
# app.config["MYSQL_CURSORCLASS"] = "DictCursor"



# File uploading directory

UPLOAD_FOLDER = 'app/static/Attachments'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


from . import views
