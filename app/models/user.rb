class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username
  has_many :documents, dependent: :destroy

  def email_required?
      false
  end

  def email_changed?
      false
  end

  def admin?
    is_admin
  end

end
