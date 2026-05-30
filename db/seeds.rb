# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

titles = ["Complete project report", "Buy groceries", "Schedule meeting with team", "Plan weekend trip", "Read new book"]
descriptions = [
  "Finish the report for the upcoming project deadline.",
  "Buy milk, eggs, bread, and fruits from the supermarket.",
  "Set up a meeting to discuss project progress and next steps.",
  "Organize a trip for the weekend with friends or family.",
  "Start reading the new book that was recently released."
]
statuses = ["pending", "in_progress", "completed"]

# Create sample users
user1 = User.find_or_create_by!(user_name: "john_doe", email: "john.doe@example.com", password: "password")

5.times do |i|
  Task.find_or_create_by!(
    title: titles[i],
    description: descriptions[i],
    status: statuses.sample,
    user: user1
  )
end