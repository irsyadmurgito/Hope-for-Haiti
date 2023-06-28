# Hope for Haiti

# Lines 1-100

# FILE: help_haiti.rb

# Introduction 
puts "Welcome to the Hope for Haiti program!"

# Constants 
HAITI_COORD = [18.539269, -72.336408]
GOAL_AMOUNT = 20000

# Variables 
raised_amount = 0
donors = []

# Functions 
def get_donations
  puts "Please enter your donation amount (in USD):"
  donation = gets.chomp.to_f
  if (donation != 0)
  	donors.push(donation)
  	raised_amount += donation
  end
  puts "Thank you for your donation! Your generosity is greatly appreciated"
end

def reach_goal?
  if (raised_amount >= GOAL_AMOUNT)
    puts "Congratulations! You've reached the target goal of #{GOAL_AMOUNT} USD!"
    true
  else
    puts "We still need more money to reach our goal. Keep up the good work!"
    false
  end
end

def show_progress
  puts "We've currently raised #{raised_amount} USD. #{GOAL_AMOUNT - raised_amount} USD still left to go!"
end

def locate_haiti
  puts "Haiti is located at the following coordinates: #{HAITI_COORD}"
end

# Main Program
puts "Let's work together and raise money for Haiti!"

while !reach_goal?
  get_donations
  show_progress
end

locate_haiti
puts "Thank you for your generous donations! Your contributions have made a difference in the lives of the Haitian people"

# Lines 101-200

# FILE: help_haiti.rb

# Constants 
HAITI_COORD = [18.539269, -72.336408]
GOAL_AMOUNT = 20000

# Variables 
raised_amount = 0
donors = []

# Functions 
def get_donations
  puts "Please enter your donation amount (in USD):"
  donation = gets.chomp.to_f
  if (donation != 0)
  	donors.push(donation)
  	raised_amount += donation
  end
  puts "Thank you for your donation! Your generosity is greatly appreciated"
end

def reach_goal?
  if (raised_amount >= GOAL_AMOUNT)
    puts "Congratulations! You've reached the target goal of #{GOAL_AMOUNT} USD!"
    true
  else
    puts "We still need more money to reach our goal. Keep up the good work!"
    false
  end
end

def show_progress
  puts "We've currently raised #{raised_amount} USD. #{GOAL_AMOUNT - raised_amount} USD still left to go!"
end

def locate_haiti
  puts "Haiti is located at the following coordinates: #{HAITI_COORD}"
end

def match_donation(amount)
  puts "A generous donor has offered to match your donation of #{amount} USD!"
  puts "Please enter the additional amount you'd like to donate:"
  additional_amount = gets.chomp.to_f
  amount += additional_amount
  donors.push(amount)
  raised_amount += amount
  puts "Thank you for your generous donation!"
end

# Main Program
puts "Let's work together and raise money for Haiti!"

while !reach_goal?
  get_donations
  match_donation(donors.last) if donors.size > 0
  show_progress
end

locate_haiti
puts "Thank you for your generous donations! Your contributions have made a difference in the lives of the Haitian people"