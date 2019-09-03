require 'rails_helper'

describe AuthorBook, type: :model do
  describe 'relationships' do
    it {should belong_to :author}
    it {should belong_to :book}
  end
end
