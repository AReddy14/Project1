class CreatePets < ActiveRecord::Migration
  def change#Does this even matter? was able to get name for a pet without it being part of this, couldn't get breed when I tried. Was it necessary for this to exist in the database at all? It doesn't really seem that way, I just need to query petfinder's database and display the data. Properly built all the way through I'd probably need a different model though, for user.
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
