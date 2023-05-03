require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

=begin
Exercise 4: Loading a subset of stores
Borrowing and modifying the code from Exercise one, create 3 more stores:

Surrey (annual_revenue of 224000, carries women's apparel only)
Whistler (annual_revenue of 1900000 carries men's apparel only)
Yaletown (annual_revenue of 430000 carries men's and women's apparel)

Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.

Loop through each of these stores and output their name and annual revenue on each line.

Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
=end 

puts "Exercise 4"
puts "----------"

# Your code goes here ...
stores = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)

stores = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)

stores = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: 'true') 

@mens_stores.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end  

@womens_store = Store.where(womens_apparel: true)

@womens_store.each do |store|
  if store.annual_revenue < 1000000
    puts "#{store.name}"
  end
end