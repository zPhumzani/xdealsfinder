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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161019113135) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_categories_on_slug"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",             limit: 255, null: false
    t.string   "avatar",           limit: 255
    t.text     "description"
    t.string   "verification_doc"
    t.boolean  "verified"
    t.integer  "fee_id"
    t.integer  "industry_id"
    t.string   "slug"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["fee_id"], name: "index_companies_on_fee_id"
    t.index ["industry_id"], name: "index_companies_on_industry_id"
    t.index ["slug"], name: "index_companies_on_slug"
  end

  create_table "companies_contacts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_companies_contacts_on_company_id"
    t.index ["contact_id"], name: "index_companies_contacts_on_contact_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "address1"
    t.string   "city"
    t.string   "postal_code"
    t.string   "email"
    t.string   "business_number"
    t.string   "cell_number"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "avatar"
    t.integer  "typ_contact_id"
    t.integer  "country_id"
    t.integer  "region_id"
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
    t.index ["country_id"], name: "index_contacts_on_country_id"
    t.index ["region_id"], name: "index_contacts_on_region_id"
    t.index ["typ_contact_id"], name: "index_contacts_on_typ_contact_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "contacts_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contacts_users_on_contact_id"
    t.index ["user_id"], name: "index_contacts_users_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "iso"
    t.string   "iso3"
    t.string   "fips"
    t.string   "country"
    t.string   "continent"
    t.string   "currency_code"
    t.string   "currency_name"
    t.string   "phone_prefix"
    t.string   "postal_code"
    t.string   "language"
    t.string   "geonameid"
    t.string   "slug"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["slug"], name: "index_countries_on_slug"
  end

  create_table "fees", force: :cascade do |t|
    t.string   "name"
    t.string   "fee_percentage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_industries_on_slug"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "bill_to_contact_id"
    t.integer  "ship_to_contact_id"
    t.integer  "order_fee_id"
    t.decimal  "total_amount"
    t.datetime "purchased_at"
    t.string   "transport_method"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["company_id"], name: "index_orders_on_company_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_positions_on_slug"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "weight_in_grams"
    t.decimal  "price"
    t.integer  "available_quantity"
    t.datetime "expiry_date"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "online_order_available"
    t.float    "tax_amount"
    t.string   "image"
    t.string   "slug"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["company_id"], name: "index_products_on_company_id"
    t.index ["slug"], name: "index_products_on_slug"
    t.index ["subcategory_id"], name: "index_products_on_subcategory_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "timezone"
    t.integer  "country_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
    t.index ["slug"], name: "index_subcategories_on_slug"
  end

  create_table "typ_contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "position_id"
    t.integer  "company_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["position_id"], name: "index_users_on_position_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
