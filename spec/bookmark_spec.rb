require 'bookmark'

describe Bookmark do

describe '.all' do
  it 'returns a list of bookmarks' do
  connect_db
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end

  describe '.create' do
    it 'create new bookmarks' do
      Bookmark.create('Jeff')
      bookmarks = Bookmark.all
      expect(bookmarks).to include "Jeff"


    end

  end

end
