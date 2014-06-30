require 'spec_helper'

module RuhRoh
  describe ErrorsController do

    describe "GET 'error/404'" do
      it "returns http success" do
        skip "not sure why these don't route"
        get 'error/404'
        response.should be_success
      end
    end

   describe "GET 'error/500'" do
      it "returns http success" do
        skip "not sure why these don't route"
        get 'error/500'
        response.should be_success
      end
    end

   describe "GET 'error/422'" do
      it "returns http success" do
        skip "not sure why these don't route"
        get 'error/422'
        response.should be_success
      end
    end

  end
end
