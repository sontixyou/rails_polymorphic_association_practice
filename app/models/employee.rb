# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  family_name :string
#  first_name  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Employee < ApplicationRecord
  has_many :pictures, as: :imageable
end
