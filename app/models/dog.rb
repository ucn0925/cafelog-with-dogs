class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :dog_image

  enum size: { small: 0, medium: 1, large: 2, unknown: 3 }

  def self.size_options
    {
      "小型犬" => :small,
      "中型犬" => :medium,
      "大型犬" => :large,
      "不明" => :unknown
    }
  end

  def size_jp
    case size
      when "small"
        "小型犬"
      when "medium"
        "中型犬"
      when "large"
        "大型犬"
      when "unknown"
        "不明"
      else
        "未設定"
      end
    end
  

  validates :name, length: { maximum: 50 }
  validates :breed, length: { maximum: 50 }
end
