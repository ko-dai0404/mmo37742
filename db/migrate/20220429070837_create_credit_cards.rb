class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string     :card_name, null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
