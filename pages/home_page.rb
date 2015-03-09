class HomePage < WebPage
  URL = '/'
  validates :title, pattern: /Demo web application - Home\z/


  def logged_in?
    log.info "Getting alert about successfull logging in"
    expect(page).to have_content 'Logout'
    expect(page).to have_content 'Signed in successfully.'
  end

  end