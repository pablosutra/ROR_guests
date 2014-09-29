class CreateInvitados < ActiveRecord::Migration
  def change
    create_table :invitados do |t|
      t.string :nombreInvitado
      t.string :apodo
      t.boolean :confirmado, :default => false

      t.timestamps
    end
  end
end
