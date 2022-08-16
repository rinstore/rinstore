# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.G
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#

Role.create(
  name: :admin
)

Role.create(
  name: :owner
)

Role.create(
  name: :manager
)

Role.create(
  name: :user
)

user = User.create!(
  email: "test@email.com",
  password: "testpassword",
  password_confirmation: "testpassword"
)

40.times do |i|
  item = Item.create!(user: user)
  item_info = ItemInfo.create!(
    name: "Item#{i}",
    description: "Description for Item#{i}",
    lang: :en,
    item: item
  )

  item_info = ItemInfo.create!(
      name: "Товар#{i}",
      description: "Описание для Товар#{i}",
      lang: :ru,
      item: item
    )
end
