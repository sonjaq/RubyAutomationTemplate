class AbstractBasePage
  def initialize(browser, url_extension)
    @base_url = 'Enter root URL here'
    @url_extension = url_extension
    @browser ||= browser
    @driver ||= Selenium::WebDriver::Driver.for @browser
    @driver.navigate.to @base_url + @url_extension
  end

  def change_url(url)
    @driver.navigate.to @base_url + url
  end
end