require 'pg'

feature 'adding new bookmarks' do
  scenario 'A user can add a new bookmark'do
  connection = PG.connect(dbname: 'bookmark_manager_test')

       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

       visit ('/bookmarks/new')
fill_in :url , with: 'bobgeldof.com'
click_button 'Submit'

visit('/bookmarks')
  expect(page).to have_content("bobgeldof.com")

  end
end
