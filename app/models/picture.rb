# == Schema Information
#
# Table name: pictures
#
#  id             :integer          not null, primary key
#  body           :text
#  imageable_type :string
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#
# Indexes
#
#  index_pictures_on_imageable  (imageable_type,imageable_id)
#
class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
