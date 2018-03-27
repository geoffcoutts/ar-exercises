require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 40)
@store1.employees.create(first_name: "Funky", last_name: "Fred", hourly_rate: 50)
@store1.employees.create(first_name: "Curious", last_name: "George", hourly_rate: 70)
@store2.employees.create(first_name: "Geoff", last_name: "Coutts", hourly_rate: 60)
@store2.employees.create(first_name: "C3", last_name: "PO", hourly_rate: 80)
@store2.employees.create(first_name: "R2", last_name: "D2", hourly_rate: 40)
@store2.employees.create(first_name: "Luke", last_name: "Skywalker", hourly_rate: 80)
@store2.employees.create(first_name: "Anakin", last_name: "Skywalker", hourly_rate: 60)