class AddAttachmentDocumentToDocpics < ActiveRecord::Migration
  def self.up
    change_table :docpics do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :docpics, :document
  end
end
