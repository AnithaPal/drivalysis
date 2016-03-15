class Patient < ActiveRecord::Base

  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},  presence: true
  validates :home_address, :length => { :maximum => 2000 }
  validates :facility_address, :length => { :maximum => 2000 }

  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user

end
