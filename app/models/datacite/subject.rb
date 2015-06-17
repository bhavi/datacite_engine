module Datacite
  class Subject < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s

    validates :subject, :resource_id, presence: true
  end
end
