class Office < ActiveRecord::Base
  belongs_to :manager, class_name: 'Dentist', foreign_key: 'dentist_id'
  has_many :dentists
end
