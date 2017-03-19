# == Schema Information
#
# Table name: translations
#
#  id                 :integer          not null, primary key
#  title              :string
#  language           :string
#  post_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  audio_file_name    :string
#  audio_content_type :string
#  audio_file_size    :integer
#  audio_updated_at   :datetime
#

class Translation < ApplicationRecord
  belongs_to :post
  has_attached_file :audio
  validates_attachment_content_type :audio, content_type: %w(audio/mpeg audio/x-mpeg audio/mp3 audio/x-mp3 audio/mpeg3 audio/x-mpeg3 audio/mpg audio/x-mpg audio/x-mpegaudio)
end