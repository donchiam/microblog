class BuildInitialSchema < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :fullname
  		t.string :username
  		t.string :email
  		t.string :password
  		t.string :image
  	end

  	create_table :blog_posts do |t|
  		t.references :user, foreign_key: {to_table: :users}, index: true
  		t.string :title
  		t.text :body
  		t.integer :likes
  		t.datetime :created_at
  	end

  	create_table :comments do |t|
  		t.references :blogpost, foreign_key: {to_table: :blogposts}, index: true
  		t.references :user, foreign_key: {to_table: :users}, index: true
  		t.text :comment
  		t.datetime :created_at
  	end
  end
end
