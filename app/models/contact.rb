class Contact < ActiveRecord::Base
  validates :last_name, presence: true
end
