class ChangeContentTypeToText < ActiveRecord::Migration[5.1]
  def change
    change_table :facts do |t|
        t.change :content, :text
      end
  end
end
