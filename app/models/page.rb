class Page < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessor :title, :content
  validates :title, :content, presence: true
end
