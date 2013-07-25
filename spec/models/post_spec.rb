# -*- coding: utf-8 -*-
require 'spec_helper'

describe Post do
  context "post领域规则" do
    before :all do
      @user = create :admin
      @post = create :测试例文 ,user: @user
    end


    it "post,应该有且只有一个宿主用户" do
      @post.user.should == @user

    end
  end
end

