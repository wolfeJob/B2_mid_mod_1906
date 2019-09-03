require 'rails_helper'

describe "User goes to the author show page" do

  before(:each) do
    @author_1 = Author.create(name:"Shel Silverstein")
    @author_2 = Author.create(name:"Fyodor Dostoyevsky")
    @book_1 = @author_1.books.create(title: "The Missing Peice", number_of_pages: 300, publication_year: 1999)
    @book_2 = @author_2.books.create(title: "Crime and Punishment", number_of_pages: 200, publication_year: 1866)
  end

it "Can see a speicifc author and thier information" do

  visit "/authors/#{@author_1.id}"
  expect(page).to have_content(@author_1.name)
  # expect(page).to have_content(@author_1.books.name)
end
end
