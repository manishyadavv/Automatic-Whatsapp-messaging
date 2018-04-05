require 'watir'

    browser = Watir::Browser.new(:chrome)

    browser.goto("https://web.whatsapp.com/")
    sleep 10
    # type your friend's name here
  browser.text_field(title: 'Search or start new chat').set 'NAME OF FRIEND/GROUP'


  browser.send_keys :enter
  10.times do
    browser.send_keys 'Hello world'
    sleep(rand(3..5))
    browser.send_keys :enter
    sleep(rand(3..5))
  end
