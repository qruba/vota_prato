class AddFotoColumnsToRestaurantes < ActiveRecord::Migration
  def self.up
    add_attachment :restaurantes, :foto
  end

  def self.down
    remove_attachment :restaurantes, :foto
  end
end