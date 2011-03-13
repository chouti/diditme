class User < ActiveRecord::Base
  has_many  :tasks
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["account"]
      user.token = auth["credentials"]['token']
    end
  end
end
