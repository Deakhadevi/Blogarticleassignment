class CreateBlogarticle < ActiveRecord::Migration[7.0]
  def change
    create_table :blogarticles do |t|
      t.string :blogtitle
      t.string :blogcontent
      t.string :blogimglink

      t.timestamps
    end
  end
end
