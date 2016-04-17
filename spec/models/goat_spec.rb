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
#

require 'rails_helper'

RSpec.describe Goat, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
