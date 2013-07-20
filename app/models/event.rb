class Event < ActiveRecord::Base
  scope :all_events, -> {
    find(:all, :order => "event_date desc")
  }
end
