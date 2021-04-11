# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Card.create!(:card_number => "1", :suit => "spades" , :value => "1");
Card.create!(:card_number => "2", :suit => "spades" , :value => "2");
Card.create!(:card_number => "3", :suit => "spades" , :value => "3");
Card.create!(:card_number => "4", :suit => "spades" , :value => "4");
Card.create!(:card_number => "5", :suit => "spades" , :value => "5");
Card.create!(:card_number => "6", :suit => "spades" , :value => "6");
Card.create!(:card_number => "7", :suit => "spades" , :value => "7");
Card.create!(:card_number => "8", :suit => "spades" , :value => "8");
Card.create!(:card_number => "9", :suit => "spades" , :value => "9");
Card.create!(:card_number => "10", :suit => "spades" , :value => "10");
Card.create!(:card_number => "11", :suit => "spades" , :value => "10");
Card.create!(:card_number => "12", :suit => "spades" , :value => "10");
Card.create!(:card_number => "13", :suit => "spades" , :value => "10");

Card.create!(:card_number => "27", :suit => "hearts", :value => "1");
Card.create!(:card_number => "28", :suit => "hearts", :value => "2");
Card.create!(:card_number => "29", :suit => "hearts", :value => "3");
Card.create!(:card_number => "30", :suit => "hearts", :value => "4");
Card.create!(:card_number => "31", :suit => "hearts", :value => "5");
Card.create!(:card_number => "32", :suit => "hearts", :value => "6");
Card.create!(:card_number => "33", :suit => "hearts", :value => "7");
Card.create!(:card_number => "34", :suit => "hearts", :value => "8");
Card.create!(:card_number => "35", :suit => "hearts", :value => "9");
Card.create!(:card_number => "36", :suit => "hearts", :value => "10");
Card.create!(:card_number => "37", :suit => "hearts", :value => "10");
Card.create!(:card_number => "38", :suit => "hearts", :value => "10");
Card.create!(:card_number => "39", :suit => "hearts", :value => "10");

Card.create!(:card_number => "14", :suit => "clubs", :value => "1");
Card.create!(:card_number => "15", :suit => "clubs", :value => "2");
Card.create!(:card_number => "16", :suit => "clubs", :value => "3");
Card.create!(:card_number => "17", :suit => "clubs", :value => "4");
Card.create!(:card_number => "18", :suit => "clubs", :value => "5");
Card.create!(:card_number => "19", :suit => "clubs", :value => "6");
Card.create!(:card_number => "20", :suit => "clubs", :value => "7");
Card.create!(:card_number => "21", :suit => "clubs", :value => "8");
Card.create!(:card_number => "22", :suit => "clubs", :value => "9");
Card.create!(:card_number => "23", :suit => "clubs", :value => "10");
Card.create!(:card_number => "24", :suit => "clubs", :value => "10");
Card.create!(:card_number => "25", :suit => "clubs", :value => "10");
Card.create!(:card_number => "26", :suit => "clubs", :value => "10");

Card.create!(:card_number => "40", :suit => "diamonds", :value => "1");
Card.create!(:card_number => "41", :suit => "diamonds", :value => "2");
Card.create!(:card_number => "42", :suit => "diamonds", :value => "3");
Card.create!(:card_number => "43", :suit => "diamonds", :value => "4");
Card.create!(:card_number => "44", :suit => "diamonds", :value => "5");
Card.create!(:card_number => "45", :suit => "diamonds", :value => "6");
Card.create!(:card_number => "46", :suit => "diamonds", :value => "7");
Card.create!(:card_number => "47", :suit => "diamonds", :value => "8");
Card.create!(:card_number => "48", :suit => "diamonds", :value => "9");
Card.create!(:card_number => "49", :suit => "diamonds", :value => "10");
Card.create!(:card_number => "50", :suit => "diamonds", :value => "10");
Card.create!(:card_number => "51", :suit => "diamonds", :value => "10");
Card.create!(:card_number => "52", :suit => "diamonds", :value => "10");

Guest.create(:name => "Sylvester", :balance => 515.00)
