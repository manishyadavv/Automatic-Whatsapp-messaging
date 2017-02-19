require 'watir'

    browser = Watir::Browser.new(:chrome)

    browser.goto("https://web.whatsapp.com/")
    sleep 10
    # type your friend's name here
  browser.text_field(title: 'Search or start new chat').set 'NAME OF FRIEND/GROUP'


  browser.send_keys :enter
  element=browser.div(:class => "input")
  10.times do
    element.send_keys [:control, "v"]
    browser.send_keys :enter
    sleep 2
  end
