class Block < ActiveRecord::Base

  mount_uploader :pic, PicUploader

  validates :name,
    presence: { message: "入力してください" },
    length: { minimum: 3, message: "短すぎ！" }
  validates :memo, presence: true

  belongs_to :user

end
