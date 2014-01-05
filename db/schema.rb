# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131228182634) do

  create_table "queries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "fromcountry"
    t.string   "company"
    t.string   "status"
    t.string   "rep"
    t.string   "product"
    t.string   "amount"
    t.string   "destination"
    t.string   "budget"
    t.string   "shippingtype"
    t.string   "businessname"
    t.text     "orderdetails"
    t.string   "file1"
    t.string   "file2"
    t.string   "file3"
    t.string   "file4"
    t.text     "productinfo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
