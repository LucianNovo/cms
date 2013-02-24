class Page < ActiveRecord::Base
  belongs_to :subject#, {:foreignkey => subject_id}
  belongs_to :sections
  attr_accessible :title, :body, :position, :name, :permalink
end
