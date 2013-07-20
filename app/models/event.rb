class Event < ActiveRecord::Base
  has_many :comments # , foreign_key: "event_id"
end
