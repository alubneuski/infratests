require 'spec_helper'

describe 'the example network' do

  before :each do
   @iam = iam_role('ApplicationCF-ApplicationCFRole-ZWAW9ALDHVSI')
  end
=begin
    it "iam has policy" do
      @iam.should be_has_attached_policy(nil)
    end

    it "iam has number of attached policies" do
      @iam.should be_has_number_of_attached_policies(0)
    end
	
    it "iam has number of inline policies" do
      @iam.should be_has_number_of_inline_policies(6)
    end
=end
    it "iam has inline policy document" do
      @iam.should be_has_assume_role_policy_document({"Version"=>"2012-10-17", "Statement"=>[{"Effect"=>"Allow", "Principal"=>{"AWS"=>["arn:aws:iam::241449424531:root", "arn:aws:iam::654962015416:root"], "Service"=>"servicecatalog.amazonaws.com"}, "Action"=>"sts:AssumeRole"}]})
    end

    it "iam has inline policy " do
      @iam.should be_has_inline_policy("ApplicationCloudFormationEC2Policy")
    end

end
