require 'spec_helper'

describe "FriendlyForwardings" do
  
  it "should forward user to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)
    # auto-redirects to signin page
    integration_sign_in(user)
    response.should render_template('users/edit')
  end
  
end
