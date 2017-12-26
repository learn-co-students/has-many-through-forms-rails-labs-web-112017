class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def uniq_posts
    unq = []
    self.posts.each do |post|
      if !unq.any? {|inst| inst.title == post.title}
        unq << post
      end
    end
    unq
  end
end
