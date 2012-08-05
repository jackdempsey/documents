module Documents
  class Document < ActiveRecord::Base
    include Documents::Engine.routes.url_helpers

    belongs_to :owner, polymorphic: true
    attr_accessible :file, :owner, :owner_id, :owner_type, :title, :description, :tag_list

    acts_as_taggable

    mount_uploader :file, BasicDocumentUploader

    def to_s
      File.basename(file.to_s)
    end

    def as_json(options=nil)
      {
        name: read_attribute(:file),
        size: file.size,
        url: file.url,
        delete_url: document_path(id: id),
        delete_type: "DELETE"
      }
    end
  end
end
