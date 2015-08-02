class Dentist < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :subordinates, class_name: 'Dentist', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Dentist'
end
