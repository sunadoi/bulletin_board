require 'rails_helper'

describe Response do
  describe '#create' do
    context 'can save' do
      it "is valid with a content" do
        response = build(:response)
        expect(response).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without a content" do
        response = build(:response, content: "")
        response.valid?
        expect(response.errors[:content]).to include("を入力してください")
      end
    end
  end
end