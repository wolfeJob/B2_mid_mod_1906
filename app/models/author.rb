class Author < ApplicationRecord
belongs_to :book
has_many :author_books
validates_presence_of :name

end
