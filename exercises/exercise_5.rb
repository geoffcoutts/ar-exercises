require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@allstores = Store.all

Inf = 1.0/0.0

puts "Total revenue = #{@allstores.sum(:annual_revenue)}"

puts "Average revenue/store  = #{@allstores.average(:annual_revenue)}"

puts "Number of stores generating more than $1million in sales: #{Store.where('annual_revenue >= ?', 1_000_000).count}"