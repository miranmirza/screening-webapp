class User < ActiveRecord::Base
  has_many :notes
  has_many :candidates, through: :notes

  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(provider: auth.provider, uid: auth.uid)
    user.firstname = auth.info.first_name
    user.lastname = auth.info.last_name
    user.email = auth.info.email
    user.profile_image_url = auth.info.image
    user.token = auth.credentials.token
    user.save

    user
  end

  def screener?
    role == "screener" || role == "shadower"
  end

  def admin?
    role == "admin"
  end

  def shadow?
    role == "shadow"
  end

  def guest?
    !self.screener? && !self.admin?
  end

  def revoke!
    self.role = "pending"
    save!
  end

  def grant!
    self.role = "screener"
    save!
  end
end
