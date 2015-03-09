require 'spec_helper'
describe " behaviour of \'login page\' then user submits different kinds of credentials " do

  before(:each) do
    LoginPage.open
  end

    context "if user trying to login with empty dataset" do
    it "should show error message " do
      LoginPage.given.submit_form
      expect(LoginPage.given).to be_get_error_message
    end
    end

  context "if user trying to login with invalid dataset" do
    it "should show error message " do

      LoginPage.given.fill_email('d3rf4fa@gmail.com')
          .fill_password('1QA32wsx')
          .submit_form
      expect(LoginPage.given).to be_get_error_message
    end


    context "when customer input correct dataset" do
      it "should allow to enter, and show notice about correct succesfull logging in" do


        LoginPage.given.fill_email('pavel.hvoya@gmail.com')
            .fill_password('1QAZ2wsx')
            .submit_form
        HomePage.wait_for_opened
        expect(HomePage.given).to be_logged_in
      end
  end


  end


end

