class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :cpf
      t.string :nome
      t.date :data_nascimento
      t.string :cep
      t.string :complemento
      t.string :ddd
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
