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

ActiveRecord::Schema.define(version: 20171114052131) do

  create_table "hoge", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id", null: false
    t.string "dport1", null: false
    t.string "dport2", null: false
    t.integer "delay", null: false
    t.string "judge", null: false
  end

  create_table "topologies", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "dport1", limit: 128
    t.string "dport2", limit: 128
    t.float "delay", limit: 24
    t.string "judge", limit: 32
    t.integer "updated"
  end

  create_table "topology", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "dport1", limit: 128
    t.string "dport2", limit: 128
    t.float "delay", limit: 24
    t.string "judge", limit: 32
    t.integer "updated"
  end

  create_table "vlan", primary_key: "vlan", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "start", limit: 128
    t.string "end", limit: 128
    t.string "path", limit: 32
    t.string "created_at", limit: 32
    t.string "updated_at", limit: 32
  end

  create_table "vlans", primary_key: "vlanid", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "start", limit: 128
    t.string "end", limit: 128
    t.string "path", limit: 32
    t.string "created_at", limit: 32
    t.string "updated_at", limit: 32
  end

end
