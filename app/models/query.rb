class Query < ActiveRecord::Base
  attr_accessible :amount, :budget, :businessname, :company, :destination, :email, :file1, :file2, :file3, :file4, :fromcountry, :name, :orderdetails, :product, :productinfo, :rep, :shippingtype, :status, :email_confirmation
validates :amount, :name, :destination, :product, :shippingtype, :fromcountry, presence: true
validates :email, confirmation: true, presence: true, length: { minimum: 3}
validates :email_confirmation, presence: true, :on => :create

end
