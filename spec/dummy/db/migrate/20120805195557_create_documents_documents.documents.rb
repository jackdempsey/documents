# This migration comes from documents (originally 20120805175417)
class CreateDocumentsDocuments < ActiveRecord::Migration
  def change
    create_table :documents_documents do |t|
      t.string :file, :title
      t.text :description
      t.references :owner, polymorphic: true

      t.timestamps
    end
    add_index :documents_documents, :owner_id
  end
end
