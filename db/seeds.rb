# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Used to Seed DB for the Board Page Memebers will be displayed in the order they are entered in the DB
#EBoard
user1 = User.create!(:name => "Mike Zegreda", :email => "president@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected President of BTV!") 

user1 = User.create!(:name => "Patrick Schechter", :email => "VicePresident@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Vice President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Vice President of BTV!")

user1 = User.create!(:name => "Scott Sanders", :email => "Treasurer@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Treasurer", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Treasurer of BTV!")

user1 = User.create!(:name => "Chris Graf", :email => "ProductionManager@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Production Manager", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Production Manager of BTV!!")

user1 = User.create!(:name => "Joseph Bzomowski", :email => "programming@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Administrative Director", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Administrative Director of BTV!")

user1 = User.create!(:name => "Not Sure Yet", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Chief Engineer", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Chief Engineer of BTV?!")

user1 = User.create!(:name => "Michael Hickey", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Chief of Staff", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Chief of Staff of BTV!")

#Production Board
user1 = User.create!(:name => "Not Sure Yet", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Editing Director", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Editing Director of BTV!")

user1 = User.create!(:name => "Melissa Edelblum", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "News Manager", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected News Director of BTV!")

user1 = User.create!(:name => "Not Sure Yet", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Programming Director", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Programming Director of BTV!")

user1 = User.create!(:name => "Maura Linehan", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Studio Director", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Studio Director of BTV!")

user1 = User.create!(:name => "Wade Wicks", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Marketing Manager", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Marketing Manager of BTV!")

user1 = User.create!(:name => "Dan Berlin", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Head of Writing", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Head of Writing of BTV!")

user1 = User.create!(:name => "JAmes Ferrick", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Downtime Director", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Downtime Director of BTV!")

user1 = User.create!(:name => "Phil Kral", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Mobile Unit", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Mobile Unit of BTV!")

user1 = User.create!(:name => "Danielle Micceri", :email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Aesthetics Director", :board => "production", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Aesthetics Director of BTV!")



