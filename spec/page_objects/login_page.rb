class LoginPage
  include Capybara::DSL

  def visit_page
    visit Rails.application.routes.url_helpers.new_user_session_path
    self
  end

  def login(user, pass)
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: pass
    click_button I18n.t('devise.sign_in')
  end
end
