class Project < ApplicationRecord
    attribute :title, :string
    attribute :description, :text
    attribute :day, :string
    attribute :event_type, :string
    attribute :priority, :integer
end
