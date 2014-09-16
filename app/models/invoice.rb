class Invoice < ActiveRecord::Base
  belongs_to :employee
  has_many :purchaces, dependent: :destroy
end
