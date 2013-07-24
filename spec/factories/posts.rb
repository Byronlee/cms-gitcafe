# -*- coding: utf-8 -*-

FactoryGirl.define do
  factory :post ,:class=> Post do
    
    factory :测试例文 do
      title  "gitcafe未来如何发展？"
      content "它的发展非常可观"
      association :author
    end
  end
end
