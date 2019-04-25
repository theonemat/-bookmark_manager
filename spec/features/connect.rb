def connect_db
  connection = PG.connect(dbname: 'bookmark_manager_test')

       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
 end
