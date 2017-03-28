class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :file_name
      t.string :file
      t.timestamps
    end
  end
end
