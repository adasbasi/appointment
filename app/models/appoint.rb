class Appoint < ApplicationRecord
  belongs_to :appointable, polymorphic: true
end
