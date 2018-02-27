require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating database for carbon health..."
puts 'Creating 100 fake specialties...'

array_specs = ["Allergy and immunology",
"Anesthesiology",
"Anti-Aging Medicine",
"Bariatrics",
"Cardiology",
"Cardiovascular Surgery",
"Child & Adolescent Psychiatry",
"Colon and Rectal surgery",
"Critical care",
"Dentistry",
"Dermatology",
"Diagnostic Radiology",
"Ear, Nose & Throat",
"Electrophysiology",
"Emergency medicine",
"Endocrinology",
"Family Medicine",
"Gastroenterology",
"General Surgery",
"Genetics",
"Geriatrics",
"Gynecologic Oncology",
"Gynecology",
"Head and Neck Surgery",
"Hematology",
"Hepatology",
"Infectious Diseases",
"Internal Medicine",
"Interventional Radiology",
"Neonatology",
"Nephrology",
"Neurology",
"Neurosurgery",
"Nuclear Medicine",
"Obstetrics and Gynecology",
"Occupational Medicine",
"Oncology",
"Ophthalmology",
"Optometry",
"Oral Surgery",
"Orthodontics",
"Orthopedics",
"Otology",
"Pain Management",
"Pancreatic and Hepatobiliary Surgery",
"Pathology",
"Pediatrics",
"Perinatology",
"Pharmacy",
"Physiatry",
"Physical Medicine and Rehabilitation",
"Plastic Surgery",
"Podiatry",
"Psychiatry",
"Psychology",
"Pulmonology",
"Radiation Oncology",
"Radiology",
"Reproductive Endocrinology",
"Rheumatology",
"Sleep Medicine",
"Sports Medicine",
"Surgery",
"Surgical Critical Care",
"Thoracic surgery",
"Transplantation",
"Urogynecology",
"Urology"]

array_specs.each do |spec|
  specialty = Specialty.new(
    name: spec,
    isPopular: [true, false].sample
  )
  specialty.save!
end
puts 'Finished for specialties!'

puts 'Creating 150 fake patients...'





