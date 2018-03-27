require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store = Store.new
store.name = "Surrey"
store.annual_revenue = 224_000
store.mens_apparel = false
store.womens_apparel = true
store.save

store = Store.new
store.name = "Whistler"
store.annual_revenue = 1_900_000
store.mens_apparel = false
store.womens_apparel = false
store.save

store = Store.new
store.name = "Yaletown"
store.annual_revenue = 430_000
store.mens_apparel = true
store.womens_apparel = true
store.save

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do | s |
  puts s.name
  puts s.annual_revenue
end

@womens_stores = Store.where(womens_apparel: true, annual_revenue: (0..1_000_000))

@womens_stores.each do | s |
  puts s.name
  puts s.annual_revenue
end