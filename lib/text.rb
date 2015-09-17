require "twilio-ruby"

class Text

  def initialize
    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["AUTH_TOKEN"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_text(message, phone_no)
    @client.account.messages.create( from: ENV["TWILIO_NUM"], to: phone_no, body: message )
  end

end