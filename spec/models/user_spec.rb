require 'rails_helper'

describe User do
  describe '#create' do
    context 'can save' do
      it "is valid with a nickname, email, password" do
        user = build(:user)
        expect(user).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without a name" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("を入力してください")
      end

      it "is invalid without a email" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("を入力してください")
      end

      it "is invalid with a duplicate email" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("はすでに存在します")
      end

      it "is invalid without a password" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "is invalid without a password less than 6 characters " do
        user = build(:user, password: "12345")
        user.valid?
        expect(user.errors[:password]).to include("は6文字以上で入力してください")
      end
    end
  end
end