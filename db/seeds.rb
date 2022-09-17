# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ShiftType.create!([{type_name: "start_day" , form_to:"0-8"},{type_name: "mid_day" , form_to:"8-16"},{type_name: "end_day" , form_to:"16-24"}])
