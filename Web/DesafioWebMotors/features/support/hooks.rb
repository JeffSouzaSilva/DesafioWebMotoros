
Before do
    @busca_page = BuscaPage.new

    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.page.driver.browser.manage.window.maximize
  end


  After do |scenario|
    screen = page.save_screenshot("report/screen.png")
    screenshot = Base64.encode64(File.open(screen, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
  end