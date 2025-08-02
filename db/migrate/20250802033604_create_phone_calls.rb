class CreatePhoneCalls < ActiveRecord::Migration[8.0]
  def change
    create_table :phone_calls do |t|
      t.timestamps
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :caller
    end
  end
end
