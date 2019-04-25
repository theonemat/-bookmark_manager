require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
  def self.create(url)
    if ENV['ENVIRONMENT'] == 'test'
    db = 'bookmark_manager_test'
    else
      db = 'bookmark_manager'
    end
      connection = PG.connect(dbname: db)
    result = connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")

  end
end
