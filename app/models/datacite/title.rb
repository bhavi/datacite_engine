module Datacite
  class Title < ActiveRecord::Base
    belongs_to :resource, class_name: Datacite.resource_class.to_s, foreign_key: "resource_id"

    validates :title, :resource_id, presence: true

    private

  end
end
