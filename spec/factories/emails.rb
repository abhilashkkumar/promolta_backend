FactoryGirl.define do
  factory :email do
    to "MyString"
    from "MyString"
    body "MyString"
    is_sent false
    is_draft false
    is_trash false
    is_read false
  end
end
