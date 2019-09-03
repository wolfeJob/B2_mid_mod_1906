class Book < ApplicationRecord
belongs_to :author
has_many :author_books
validates_presence_of :title,
                      :number_of_pages,
                      :publication_year

end
