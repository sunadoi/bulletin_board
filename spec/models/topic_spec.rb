require 'rails_helper'

describe Topic do
  describe '#create' do
    context 'can save' do
      it "is valid with a title" do
        topic = build(:topic)
        expect(topic).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without a title" do
        topic = build(:topic, title: "")
        topic.valid?
        expect(topic.errors[:title]).to include("を入力してください")
      end
    end
  end
end