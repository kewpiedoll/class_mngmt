require 'spec_helper'

describe "Welcomes" do
  describe "GET /welcomes" do
    it "works! (now write some real specs)" do
      pending
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get welcomes_path
      response.status.should be(200)
    end
  end
end
