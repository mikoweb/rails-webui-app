class Page < ActiveRecord::Base
  include ActiveModel::Validations

  validates :title, :content, presence: true
end
