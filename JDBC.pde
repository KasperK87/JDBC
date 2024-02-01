import de.bezier.data.sql.*;

SQLite db;

void setup(){
  db = new SQLite(this, "main.db");
  
  if (db.connect()){
    println("I'm inside"); 
    
    //db.query("CREATE TABLE test (Name varchar(20), Age int)");
    
    db.query("INSERT INTO test (Name, Age) VALUES (\"Ole\", 44)");
    
    db.query("SELECT (rowid) FROM test");
    
    while(db.next()){
      println( db.getString("rowid") );
    }
  }
}

void draw(){
  
}
