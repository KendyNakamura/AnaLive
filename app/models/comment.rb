# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user, inverse_of: :comments
end
