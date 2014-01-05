class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :name
      t.string :email
      t.string :fromcountry
      t.string :company
      t.string :status
      t.string :rep
      t.string :product
      t.string :amount
      t.string :destination
      t.string :budget
      t.string :shippingtype
      t.string :businessname
      t.text :orderdetails
      t.string :file1
      t.string :file2
      t.string :file3
      t.string :file4
      t.text :productinfo

      t.timestamps
    end
  end
end
