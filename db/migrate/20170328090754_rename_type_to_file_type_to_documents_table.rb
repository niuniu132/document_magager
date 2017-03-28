class RenameTypeToFileTypeToDocumentsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :documents, :type, :file_type
  end
end
