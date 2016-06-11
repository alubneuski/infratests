require 'spec_helper'

describe 'the example network' do

  before :each do
   @iam = iam_role('ApplicationCF-ApplicationCFRole-ZWAW9ALDHVSI')
  end

    it "iam has policy" do
      @iam.should be_has_attached_policy('')
    end

    it "iam has number of attached policies" do
      @iam.should be_has_number_of_attached_policies(0)
    end
	
    it "iam has number of inline policies" do
      @iam.should be_has_number_of_inline_policies(6)
    end

end
