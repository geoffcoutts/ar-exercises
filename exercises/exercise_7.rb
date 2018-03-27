require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { minimum: 1 }
  validate :sells_clothes

  def sells_clothes
    if :mens_apparel? && :womens_apparel?
      errors.add(:Base, "Must sell male or female clothes")
    end
  end
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 39, less_than_or_equal_to: 201 }, presence: true
  validates :store, presence: true
end

print "Please enter a new store name: "
input = gets.chomp

store = Store.new
store.name = input
store.save

store.valid?
store.errors.each do | attribute, error |
  puts attribute, error
end
