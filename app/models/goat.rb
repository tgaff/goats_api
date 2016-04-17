# == Schema Information
#
# Table name: goats
#
#  id         :integer          not null, primary key
#  name       :string
#  charisma   :integer
#  latitude   :float
#  longitude  :float
#  color      :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#

class Goat < ApplicationRecord
end
