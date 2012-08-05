module Documents
  class Document < ActiveRecord::Base
    belongs_to :owner, polymorphic: true
    attr_accessible :file, :owner, :owner_id, :owner_type
  end
end
