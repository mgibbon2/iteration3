class Project < ApplicationRecord
    validates_presence_of :title, :description, :day, :event_type, :priority
end
