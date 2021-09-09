require 'rails_helper'

RSpec.describe Blog, type: :model do
  let(:title) { "Maligayang Pasko" }
  let(:body) { "This is a body" }
  let(:blog) { build(:blog, title: title, body: body) }

  describe 'relationship' do 
    it { expect(blog).to have_many(:comments).dependent(:destroy) }
    it { expect(blog).to belong_to(:user) }
  end

  describe '#title' do
    context 'when empty' do
      let(:title) { "" }

      it 'will error' do
        expect(blog).to_not be_valid
      end
    end

    context 'when valid' do
      it 'will succeed' do
        expect(blog).to be_valid
      end
    end
  end

  describe '#body' do
    context 'when empty' do
      let(:body) { "" }

      it 'will error' do
        expect(blog).to_not be_valid
      end
    end

    context 'when valid' do
      it 'will succeed' do
        expect(blog).to be_valid
      end
    end
  end
    
end
