class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :cep
      t.string :complemento
      t.string :email
      t.date   :nascimento
      t.string :ddd
      t.string :telefone
      t.string :senha_hash

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
