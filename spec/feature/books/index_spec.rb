require "rails_helper"

describe "User goes to books index page" do
  
  before(:each) do
    @book_1 = Book.create(title: "the giving tree",number_of_pages: 300, publication_year: 1999)
    @book_2 = Book.create(title: "the missing piece",number_of_pages: 200, publication_year: 2004)
  end

  it "can see all books" do

    visit "/book"

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_1.number_of_pages)
    expect(page).to have_content(book_1.publication_year)
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(book_2.number_of_pages)
    expect(page).to have_content(book_2.publication_year)
  end
end
