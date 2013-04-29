# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)






# Used to Seed DB for the Baord Page
user1 = User.create!(:name => "Cezar Cocu", :email =>"a@b.com")
BoardInfo.create!(:user_id => user1.id, :title=> "President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "A nice Description about Cezar")

user1 = User.create!(:name => "Ben Ramos", :email =>"b@d.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Consigliere", :board => "executive", :photo => "/assets/Contact.jpg", :description => "Ben Loves Fashion")


user1 = User.create!(:name => "Chris Graf", :email =>"d@e.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Master Boss", :board => "production", :photo => "/assets/Contact.jpg", :description => "Chris likes stuff")


<<<<<<< HEAD
#EBoard
user1 = User.create!(:name => "Mike Zegreda", :email => "president@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected President of BTV!") 

user1 = User.create!(:name => "Patrick Schechter", :email => "VicePresident@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Vice President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Vice President of BTV!")

user1 = User.create!(:name => "Scott Sanders", email => "Treasurer@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Treasurer", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Treasurer of BTV!")

user1 = User.create!(:name => "Chris Graf", email => "ProductionManager@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Production Manager", board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Production Manager of BTV!!")

user1 = User.create!(:name => "Joseph Bzomowski", email => "programming@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Administrative Director", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Administrative Director of BTV!")

user1 = User.create!(:name => "Not Sure Yet", email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Chief Engineer", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Chief Engineer of BTV?!")

user1 = User.create!(:name => "Michael Hickey", email => "btv@TheNewBTV.com")
BoardInfo.create!(:user_id => user1.id, :title => "Chief of Staff", :board => "executive", :photo => "/assets/Contact.jpg", :description => "The Newly Elected Chief of Staff of BTV!")





=======
user1 = User.create!(:name => "Aaron", :email =>"d@e.com")
BoardInfo.create!(:user_id => user1.id, :title=> "chef", :board => "executive", :photo => "/assets/Contact.jpg", :description => "Aron likes stuff")
>>>>>>> 1a7d4984bbd6f5a35c55f96ad0fd0f48f9f7ecad
