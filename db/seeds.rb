# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Genre.create([
    { name: "カフェ"},
    { name: "パン"},
    { name: "洋食"},
    { name: "イタリアン"},
    { name: "フレンチ"},
    { name: "ハンバーガー"},
    { name: "カレー"},
    { name: "中華"},
    { name: "エスニック"},
    { name: "和食"}
])

Block.create([
    { name: "甲府・昭和"},
    { name: "甲斐・中央"},
    { name: "北杜・韮崎"},
    { name: "南アルプス"},
    { name: "峡南"},
    { name: "富士五湖"},
    { name: "都留・大月"}
])