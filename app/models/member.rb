class Member < ApplicationRecord

validates_presence_of :first_name, :last_name, :house_id
belongs_to :house


end
