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

class Post < ApplicationRecord
  belongs_to :user, inverse_of: :posts
  validates :movie_id, presence: true
  # validates :movie_id, format: { with: /https:\/\/youtu.be\/*/}
  # validates :movie_id, format: { with: /https:\/\/www.youtube.com\/watch\?v=*/}

  # posts per page
  paginates_per 5

  def movie_url
    if movie_id.match(%r{/watch\?v=}).present?
      movie_id.match(%r{/watch\?v=}).post_match
    elsif movie_id.match(%r{^https:\/\/youtu.be/}).present?
      movie_id.match(%r{^https:\/\/youtu.be/}).post_match
    end
  end
end
