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

FactoryGirl.define do
  factory :goat do
    latitude 1.5
    longitude 1.5
    color "blue"
    birthdate "2016-04-17"
  end
end
