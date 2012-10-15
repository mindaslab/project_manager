class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :completion_date, :description, :title
end
