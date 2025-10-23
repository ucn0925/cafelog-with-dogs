# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# --- ジャンル ---
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

# --- 地域ブロック ---
Block.create([
    { name: "甲府・昭和・中央"},
    { name: "甲斐・韮崎・北杜"},
    { name: "峽東"},
    { name: "南アルプス・峡南"},
    { name: "富士五湖"},
    { name: "都留・大月"}
])

# --- 市町村 ---
City.create([
    # 甲府・昭和・中央
    { name: "甲府市", block: Block.find_by(name: "甲府・昭和・中央")},
    { name: "昭和町", block: Block.find_by(name: "甲府・昭和・中央")},
    { name: "中央市", block: Block.find_by(name: "甲府・昭和・中央")},

    # 甲斐・韮崎・北杜
    { name: "甲斐市", block: Block.find_by(name: "甲斐・韮崎・北杜")},
    { name: "韮崎市", block: Block.find_by(name: "甲斐・韮崎・北杜")},
    { name: "北杜市", block: Block.find_by(name: "甲斐・韮崎・北杜")},

    # 峽東
    { name: "笛吹市", block: Block.find_by(name: "峽東")},
    { name: "山梨市", block: Block.find_by(name: "峽東")},
    { name: "甲州市", block: Block.find_by(name: "峽東")},

    # 南アルプス・峡南
    { name: "南アルプス市", block: Block.find_by(name: "南アルプス・峡南")},
    { name: "市川三郷町", block: Block.find_by(name: "南アルプス・峡南")},
    { name: "富士川町", block: Block.find_by(name: "南アルプス・峡南")},
    { name: "早川町", block: Block.find_by(name: "南アルプス・峡南")},
    { name: "身延町", block: Block.find_by(name: "南アルプス・峡南")},
    { name: "南部町", block: Block.find_by(name: "南アルプス・峡南")},

    # 富士五湖
    { name: "富士河口湖町", block: Block.find_by(name: "富士五湖")},
    { name: "鳴沢村", block: Block.find_by(name: "富士五湖")},
    { name: "富士吉田市",block: Block.find_by(name: "富士五湖")},
    { name: "忍野村", block: Block.find_by(name: "富士五湖")},
    { name: "山中湖村", block: Block.find_by(name: "富士五湖")},

    # 都留・大月
    { name: "都留市", block: Block.find_by(name: "都留・大月")},
    { name: "大月市", block: Block.find_by(name: "都留・大月")},
    { name: "西桂町", block: Block.find_by(name: "都留・大月")},
    { name: "道志村", block: Block.find_by(name: "都留・大月")},
    { name: "上野原市", block: Block.find_by(name: "都留・大月")},
    { name: "小菅村", block: Block.find_by(name: "都留・大月")},
    { name: "丹波山村", block: Block.find_by(name: "都留・大月")}
])