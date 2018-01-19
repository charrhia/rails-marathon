class House < ApplicationRecord
validates_presence_of :name, :author, :source_material
has_many :members

end
