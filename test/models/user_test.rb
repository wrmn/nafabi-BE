require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user with valid email should be valid' do
    user = User.new(username: 'userTest',password_digest: 'test')
    assert user.valid?
  end
  test 'user with duplicate username should be invalid' do
    other_user = users(:one)
    user = User.new(username: other_user.username, password_digest: 'test')
    assert_not user.valid?
  end
end
