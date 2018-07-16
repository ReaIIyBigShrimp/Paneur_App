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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "AspNetInvitations", primary_key: "Token", id: :text, force: :cascade do |t|
    t.text "Adresant", null: false
    t.text "InviterId", null: false
    t.datetime "Timestamp", null: false
    t.index ["InviterId"], name: "IX_AspNetInvitations_InviterId"
  end

  create_table "AspNetRoleClaims", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.text "ClaimType"
    t.text "ClaimValue"
    t.text "RoleId", null: false
    t.index ["RoleId"], name: "IX_AspNetRoleClaims_RoleId"
  end

  create_table "AspNetRoles", primary_key: "Id", id: :text, force: :cascade do |t|
    t.text "ConcurrencyStamp"
    t.string "Name", limit: 256
    t.string "NormalizedName", limit: 256
    t.index ["NormalizedName"], name: "RoleNameIndex", unique: true
  end

  create_table "AspNetUserClaims", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.text "ClaimType"
    t.text "ClaimValue"
    t.text "UserId", null: false
    t.index ["UserId"], name: "IX_AspNetUserClaims_UserId"
  end

  create_table "AspNetUserLogins", primary_key: ["LoginProvider", "ProviderKey"], force: :cascade do |t|
    t.text "LoginProvider", null: false
    t.text "ProviderKey", null: false
    t.text "ProviderDisplayName"
    t.text "UserId", null: false
    t.index ["UserId"], name: "IX_AspNetUserLogins_UserId"
  end

  create_table "AspNetUserRoles", primary_key: ["UserId", "RoleId"], force: :cascade do |t|
    t.text "UserId", null: false
    t.text "RoleId", null: false
    t.index ["RoleId"], name: "IX_AspNetUserRoles_RoleId"
  end

  create_table "AspNetUserTokens", primary_key: ["UserId", "LoginProvider", "Name"], force: :cascade do |t|
    t.text "UserId", null: false
    t.text "LoginProvider", null: false
    t.text "Name", null: false
    t.text "Value"
  end

  create_table "AspNetUsers", primary_key: "Id", id: :text, force: :cascade do |t|
    t.integer "AccessFailedCount", null: false
    t.text "ConcurrencyStamp"
    t.string "Email", limit: 256
    t.boolean "EmailConfirmed", null: false
    t.boolean "LockoutEnabled", null: false
    t.datetime "LockoutEnd"
    t.string "NormalizedEmail", limit: 256
    t.string "NormalizedUserName", limit: 256
    t.text "PasswordHash"
    t.text "PhoneNumber"
    t.boolean "PhoneNumberConfirmed", null: false
    t.text "SecurityStamp"
    t.boolean "TwoFactorEnabled", null: false
    t.string "UserName", limit: 256
    t.index ["NormalizedEmail"], name: "EmailIndex"
    t.index ["NormalizedUserName"], name: "UserNameIndex", unique: true
  end

  create_table "Countries", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.text "Description"
    t.integer "FlagId"
    t.string "Name", limit: 255, null: false
    t.index ["FlagId"], name: "IX_Countries_FlagId"
  end

  create_table "EliteDocument", primary_key: ["EliteId", "FileId"], force: :cascade do |t|
    t.integer "EliteId", null: false
    t.integer "FileId", null: false
    t.index ["FileId"], name: "IX_EliteDocument_FileId"
  end

  create_table "EliteTypes", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.index ["Name"], name: "AlternateKey_ElitTypeName", unique: true
  end

  create_table "Elites", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.integer "CountryId", null: false
    t.text "Description"
    t.string "Name", limit: 255, null: false
    t.integer "TypeId", null: false
    t.index ["CountryId"], name: "IX_Elites_CountryId"
    t.index ["TypeId"], name: "IX_Elites_TypeId"
  end

  create_table "FileLanguage", primary_key: ["LanguageId", "FileId"], force: :cascade do |t|
    t.integer "LanguageId", null: false
    t.integer "FileId", null: false
    t.index ["FileId"], name: "IX_FileLanguage_FileId"
  end

  create_table "FileTypes", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.index ["Name"], name: "AlternateKey_FileTypeName", unique: true
  end

  create_table "Files", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.string "ArchivalCode", limit: 255
    t.oid "Date", null: false
    t.text "Description"
    t.text "FileName"
    t.text "LanguageBlob"
    t.string "Name", limit: 255
    t.string "ReferenceNumber", limit: 255
    t.integer "TypeId"
    t.index ["TypeId"], name: "IX_Files_TypeId"
  end

  create_table "Languages", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.index ["Name"], name: "AlternateKey_LanguageName", unique: true
  end

  create_table "Nationalities", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.text "Country", null: false
    t.text "NationalityAdjective", null: false
  end

  create_table "People", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.oid "DateOfBirth", null: false
    t.oid "DateOfDeath", null: false
    t.text "Description"
    t.text "DocumentsBlob"
    t.text "ElitesBlob"
    t.string "Name", limit: 255, null: false
    t.text "NationalitiesBlob"
    t.integer "PictureId"
    t.text "PlaceOfBirth"
    t.text "PlaceOfDeath"
    t.text "RelationsBlob"
    t.string "Surname", limit: 255, null: false
    t.index ["PictureId"], name: "IX_People_PictureId"
  end

  create_table "PeopleElites", primary_key: "Id", id: :serial, force: :cascade do |t|
    t.oid "DateOfEmployment", null: false
    t.oid "DateOfResignation", null: false
    t.integer "EliteId", null: false
    t.boolean "MapVisible", null: false
    t.integer "PersonId", null: false
    t.string "Position", limit: 255, null: false
    t.index ["EliteId"], name: "IX_PeopleElites_EliteId"
    t.index ["PersonId"], name: "IX_PeopleElites_PersonId"
  end

  create_table "PersonDocument", primary_key: ["PersonId", "FileId"], force: :cascade do |t|
    t.integer "PersonId", null: false
    t.integer "FileId", null: false
    t.index ["FileId"], name: "IX_PersonDocument_FileId"
  end

  create_table "PersonNationality", primary_key: ["NationalityId", "PersonId"], force: :cascade do |t|
    t.integer "NationalityId", null: false
    t.integer "PersonId", null: false
    t.index ["PersonId"], name: "IX_PersonNationality_PersonId"
  end

  create_table "PersonPerson", primary_key: ["PersonId", "OtherPersonId"], force: :cascade do |t|
    t.integer "PersonId", null: false
    t.integer "OtherPersonId", null: false
    t.index ["OtherPersonId"], name: "IX_PersonPerson_OtherPersonId"
  end

  create_table "__EFMigrationsHistory", primary_key: "MigrationId", id: :string, limit: 150, force: :cascade do |t|
    t.string "ProductVersion", limit: 32, null: false
  end

  add_foreign_key "AspNetInvitations", "\"AspNetUsers\"", column: "InviterId", primary_key: "Id", name: "FK_AspNetInvitations_AspNetUsers_InviterId", on_delete: :cascade
  add_foreign_key "AspNetRoleClaims", "\"AspNetRoles\"", column: "RoleId", primary_key: "Id", name: "FK_AspNetRoleClaims_AspNetRoles_RoleId", on_delete: :cascade
  add_foreign_key "AspNetUserClaims", "\"AspNetUsers\"", column: "UserId", primary_key: "Id", name: "FK_AspNetUserClaims_AspNetUsers_UserId", on_delete: :cascade
  add_foreign_key "AspNetUserLogins", "\"AspNetUsers\"", column: "UserId", primary_key: "Id", name: "FK_AspNetUserLogins_AspNetUsers_UserId", on_delete: :cascade
  add_foreign_key "AspNetUserRoles", "\"AspNetRoles\"", column: "RoleId", primary_key: "Id", name: "FK_AspNetUserRoles_AspNetRoles_RoleId", on_delete: :cascade
  add_foreign_key "AspNetUserRoles", "\"AspNetUsers\"", column: "UserId", primary_key: "Id", name: "FK_AspNetUserRoles_AspNetUsers_UserId", on_delete: :cascade
  add_foreign_key "EliteDocument", "\"Elites\"", column: "EliteId", primary_key: "Id", name: "FK_EliteDocument_Elites_EliteId", on_delete: :cascade
  add_foreign_key "EliteDocument", "\"Files\"", column: "FileId", primary_key: "Id", name: "FK_EliteDocument_Files_FileId", on_delete: :cascade
  add_foreign_key "Elites", "\"EliteTypes\"", column: "TypeId", primary_key: "Id", name: "FK_Elites_EliteTypes_TypeId", on_delete: :cascade
  add_foreign_key "FileLanguage", "\"Files\"", column: "FileId", primary_key: "Id", name: "FK_FileLanguage_Files_FileId", on_delete: :cascade
  add_foreign_key "FileLanguage", "\"Languages\"", column: "LanguageId", primary_key: "Id", name: "FK_FileLanguage_Languages_LanguageId", on_delete: :cascade
  add_foreign_key "Files", "\"FileTypes\"", column: "TypeId", primary_key: "Id", name: "FK_Files_FileTypes_TypeId"
  add_foreign_key "People", "\"Files\"", column: "PictureId", primary_key: "Id", name: "FK_People_Files_PictureId"
  add_foreign_key "PeopleElites", "\"Elites\"", column: "EliteId", primary_key: "Id", name: "FK_PeopleElites_Elites_EliteId", on_delete: :cascade
  add_foreign_key "PeopleElites", "\"People\"", column: "PersonId", primary_key: "Id", name: "FK_PeopleElites_People_PersonId", on_delete: :cascade
  add_foreign_key "PersonDocument", "\"Files\"", column: "FileId", primary_key: "Id", name: "FK_PersonDocument_Files_FileId", on_delete: :cascade
  add_foreign_key "PersonDocument", "\"People\"", column: "PersonId", primary_key: "Id", name: "FK_PersonDocument_People_PersonId", on_delete: :cascade
  add_foreign_key "PersonNationality", "\"Nationalities\"", column: "NationalityId", primary_key: "Id", name: "FK_PersonNationality_Nationalities_NationalityId", on_delete: :cascade
  add_foreign_key "PersonNationality", "\"People\"", column: "PersonId", primary_key: "Id", name: "FK_PersonNationality_People_PersonId", on_delete: :cascade
  add_foreign_key "PersonPerson", "\"People\"", column: "OtherPersonId", primary_key: "Id", name: "FK_PersonPerson_People_OtherPersonId", on_delete: :cascade
  add_foreign_key "PersonPerson", "\"People\"", column: "PersonId", primary_key: "Id", name: "FK_PersonPerson_People_PersonId", on_delete: :cascade
end
