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

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
