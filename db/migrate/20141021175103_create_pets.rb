class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :animal
      t.string :breed
      t.string :size
      t.string :sex
      t.string :location
      t.string :age
    end
  end
end
