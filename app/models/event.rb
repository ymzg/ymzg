class Event < ActiveRecord::Base
  scope :all_events, -> {
    find(:all, :order => "event_date desc")
  }
  attr_accessible :image, :location, :event_date, :title
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/img/:style/missing.png"
  has_many :comments # , foreign_key: "event_id"
end
