from flask import *
from flask_mysqldb import *

app = Flask(__name__)

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_DB"] = "project semester 1"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "" 

mysql = MySQL(app)

@app.route('/') 
@app.route('/home')
def home():
    return render_template("home.html")

@app.route('/simpan', methods = ["POST", "GET"] )
def simpan():
    nama = request.form["nama"]
    bahan = request.form["bahan"]
    jenis = request.form["jenis"]
    harga = request.form["harga"]
    cursor = mysql.connection.cursor()
    query = ("insert into tahu values( %s, %s, %s, %s, %s )")
    data = ( "", nama, bahan, jenis, harga )
    cursor.execute( query, data )
    mysql.connection.commit()
    cursor.close()
    return f"sukses disimpan.."

@app.route('/tampil')
def tampil():
    cursor = mysql.connection.cursor()
    cursor.execute("select * from tahu")
    data = cursor.fetchall()
    cursor.close()
    return render_template('tampil.html',data=data) 

@app.route('/hapus/<id>')
def hapus(id):
    cursor = mysql.connection.cursor()
    query = ("delete from tahu where id = %s")
    data = (id,)
    cursor.execute( query, data )
    mysql.connection.commit()
    cursor.close()
    return redirect('/tampil')

@app.route('/update/<id>')
def update(id):
    cursor = mysql.connection.cursor()
    sql = ("select * from tahu where id = %s")
    data = (id,)
    cursor.execute( sql, data )
    value = cursor.fetchone()
    return render_template('update.html',value=value) 


@app.route('/aksiupdate', methods = ["POST", "GET"] )
def aksiupdate():
    id = request.form["id"]
    nama = request.form["nama"]
    bahan = request.form["bahan"]
    jenis = request.form["jenis"]
    harga = request.form["harga"]
    cursor = mysql.connection.cursor()
    query = ("update tahu set nama = %s, bahan = %s, jenis = %s harga = %s where id = %s")
    data = ( nama, bahan, jenis, harga, id, )
    cursor.execute( query, data )
    mysql.connection.commit()
    cursor.close()
    return redirect('/tampil')


if __name__ == "__main__":
    app.run(debug=True)