##
####
######PREREQESITES______________________________________________________________________

Given(/^I open login page$/) do
  LoginPage.open
end

##
####
######ACTIONS__________________________________________________________________________
When(/^I fill field email with "(.*?)" and password "(.*?)"$/) do |login,pass|
  LoginPage.given.fill_email(login).fill_password(pass)
 self
 end

And(/^I submit form$/) do
 LoginPage.given.submit_form
end

##
####
######CHECKS____________________________________________________________________________

Then(/^I should see alert about successfull logging in$/) do
  HomePage.given.logged_in?
end


Then(/^I should see error message$/) do
  LoginPage.given.get_error_message?
end
