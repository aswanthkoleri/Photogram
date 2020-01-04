class Post < ActiveRecord::Base
  validates :image, presence: true
  # Post processing
  has_attached_file :image, styles: { :square=> "500x500!" } 
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end