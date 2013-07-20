class Event < ActiveRecord::Base
  scope :all_events, -> {
    find(:all, :order => "event_date desc")
  }
  has_many :comments # , foreign_key: "event_id"
end
