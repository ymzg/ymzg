#encoding: utf-8
class Event < ActiveRecord::Base
  attr_accessible :image, :location, :event_date, :title, :description
  validates :image, :location, :event_date, :title, :description, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/img/:style/missing.png"
  validates_attachment :image, :presence => true,
                       :content_type => { :content_type => "image/png" },
                       :size => { :in => 0..3000.kilobytes }

  scope :all_events, -> {
    find(:all, :order => "event_date desc")
  }


end
