# -*- coding: utf-8 -*-

FactoryGirl.define do
  factory :User ,:class=> User do
    
    factory :admin do
      name  "张三"
    end
  end
end
