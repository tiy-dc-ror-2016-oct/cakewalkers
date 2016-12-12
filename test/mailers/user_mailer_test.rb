require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "appointment" do
    mail = UserMailer.welcome_email(User.last)
    assert_equal "Welcome to CakeWalkers", mail.subject
    assert_equal ["amax3002@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
  end
end
