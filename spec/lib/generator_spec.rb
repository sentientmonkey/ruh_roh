require 'spec_helper.rb'

describe RuhRoh::Generator do
  let(:generator){ RuhRoh::Generator.new }
  let(:not_found_io){ StringIO.new }
  let(:not_authorized_io){ StringIO.new }
  let(:internal_error_io){ StringIO.new }

  before(:each) do
    File.stub(:open).with("public/404.html", "w").and_yield(not_found_io)
    File.stub(:open).with("public/422.html", "w").and_yield(not_authorized_io)
    File.stub(:open).with("public/500.html", "w").and_yield(internal_error_io)
  end

  it "should generate errors" do
    generator.generate!
    not_found_io.string.should =~ /The page you were looking for doesn't exist./
    internal_error_io.string.should =~ /I'm sorry, but something went wrong./
    not_authorized_io.string.should =~ /The change you wanted was rejected./
  end
end
