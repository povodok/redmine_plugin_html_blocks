class CreateHtmlBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :html_blocks do |t|
      t.text :html_content
      t.string :exact_path
      t.string :pattern_path
    end
  end
end
