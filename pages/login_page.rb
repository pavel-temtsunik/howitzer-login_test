class LoginPage < WebPage
  URL = '/users/sign_in/'
  validates :title, pattern: /Log In\z/

  add_field_locator :email_input, 'user_email'
  add_field_locator :password, 'user_password'

  def fill_email(data)
    log.info "Filling email with #{data}"
    fill_in field_locator(:email_input), :with=>data
    self
  end

  def fill_password(pass)
    log.info "Filling password with #{pass}"
    fill_in field_locator(:password), :with=>pass
    self
  end


    def submit_form
      log.info "Submitting form "
      js_click('input[name=commit]')
    self
  end

  def get_error_message?
    log.info "Getting alert about invalid credentials "
    expect(page).to have_content 'Invalid email or password'
  end


end