require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User' do
    before do
      @user = User.new(
        email: 'test@example.com',
        password: 'password123',
        password_confirmation: 'password123'
      )
    end

    context 'successful registration' do
      it 'is valid with valid attributes' do
        expect(@user).to be_valid
      end
      it 'password accepted' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        expect(@user).to be_valid
      end
      it 'unique email accepted' do
        existing_user = User.create(
          email: 'test@example.com',
          password: 'password456',
          password_confirmation: 'password456'
        )
        @user.email = 'notTest@example.com'
        expect(@user).to be_valid
      end
    end

    context 'unsuccessful registration' do
      it 'is not valid without an email' do
        @user.email = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid without a password' do
        @user.password = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid with a short password' do
        @user.password = '12345'
        expect(@user).to_not be_valid
      end

      it 'is not valid with a non-unique email' do
        existing_user = User.create(
          email: 'test@example.com',
          password: 'password456',
          password_confirmation: 'password456'
        )
        expect(@user).to_not be_valid
      end
    end
  end
end
