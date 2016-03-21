class Topic < ActiveRecord::Base
  belongs_to :node
  belongs_to :user
  has_many :replies

  def last_reply
    replies.order(created_at: :desc).last
  end
end
