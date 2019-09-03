require "rails_helper"

describe "User goes to books index page" do

  before(:each) do
    @author_1 = Author.create(name:"Shel Silverstein")
    @author_2 = Author.create(name:"Fyodor Dostoyevsky")
    @book_1 = @author_1.books.create(title: "The Missing Peice", number_of_pages: 300, publication_year: 1999)
    @book_2 = @author_2.books.create(title: "Crime and Punishment", number_of_pages: 200, publication_year: 1866)
  end

  it "can see all books and book information" do

    visit "/books"
    save_and_open_page
    expect(page).to have_content(@book_1.title)
    expect(page).to have_content(@book_1.number_of_pages)
    expect(page).to have_content(@book_1.publication_year)
    expect(page).to have_link(@author_1.name)
    expect(page).to have_content(@book_2.title)
    expect(page).to have_content(@book_2.number_of_pages)
    expect(page).to have_content(@book_2.publication_year)
    expect(page).to have_link(@author_2.name)
  end
end
