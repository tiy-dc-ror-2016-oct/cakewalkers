require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "appointment" do
    mail = UsersMailer.appointment
    assert_equal "Appointment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
