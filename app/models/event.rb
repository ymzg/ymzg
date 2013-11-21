#encoding: utf-8
class Event < ActiveRecord::Base
  attr_accessible :image, :location, :event_date, :title, :description, :event_url
  validates  :location, :event_date, :title, :description, :event_url, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "200x200>" }, :default_url => "/img/thumb/missing.png"
  

  scope :all_events, -> {
    find(:all, :order => "event_date desc")
  }

  self.per_page = 3

end
