class Message < ApplicationRecord

  belongs_to :room
  belongs_to :user
  
  has_one_attached :image #画像ファイルのアップロードに必要 フォームのキーと記述を合わせる必要あり

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?    
  end

end
