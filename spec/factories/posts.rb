# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :string(255)
#

FactoryBot.define do
  factory :post do
    user_id 1
    body 'MyText'
  end
end
