class Contact < ApplicationRecord
  belongs_to :typ_contact
  belongs_to :country
  belongs_to :region
  belongs_to :company
  belongs_to :user
end
