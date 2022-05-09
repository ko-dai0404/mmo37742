class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.integer    :credit_amount,    null: false
      t.integer    :cost_category_id, null: false
      t.string     :content,          null: false
      t.date       :credit_date,      null: false
      t.references :user,             null: false, foreign_key: true
      t.references :credit_card,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
