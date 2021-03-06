require File.expand_path('../../test_helper', __FILE__)

# Load the example app
require File.expand_path('../../example_rails_app/config/environment', __FILE__)

describe ActionMailer do

  it "should inline the css on render" do
    SexxyEmails::Css.expects(:inline).once
    TestMailer.basic_css
  end

  it "should properly style the paragraph tags" do
    style = /<p style="font-size: 36px; font-family: Helvetica, sans-serif;">/
    assert_match style, TestMailer.basic_css.to_s
  end

  it "should add tracking parameters to inbound links"
end