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

150.times do
  patient = Patient.new(
    name: Faker::Name.unique.name,
    gender: ["Male","Female"].sample,
    phone: Faker::PhoneNumber.cell_phone,
    address: "#{Faker::Address.street_address}, San Francisco Bay",
    birthdate: Faker::Date.birthday(16, 85),
    InsuranceCardOK: [true, false].sample,
    IsVerified: [true, false].sample,
    created_at: Faker::Date.between(15.days.ago, Date.today),
    updated_at: Faker::Date.between(5.days.ago, Date.today),
  )
  patient.save!
end
puts 'Finished for patients!'


puts 'Creating 20 fake practices...'

20.times do
  practice = Practice.new(
    name: Faker::Company.name,
    about: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    IsDemo: [true, false].sample,
    IsLive: [true, false].sample,
    validated: [true, false].sample,
    phone: Faker::PhoneNumber.cell_phone,
    address: "#{Faker::Address.street_address}, San Francisco Bay",
    created_at: Faker::Date.between(60.days.ago, Date.today),
    updated_at: Faker::Date.between(5.days.ago, Date.today),
  )
  practice.save!
end
puts 'Finished for practices!'

puts 'Creating 150 fake doctors...'

150.times do
  doctor = Doctor.new(
    name: Faker::Name.unique.name,
    gender: ["Male","Female"].sample,
    specialty_id: (1..66).to_a.sample,
    medicalschool: ["University of Alabama School of Medicine",
                    "University of South Alabama College of Medicine",
                    "Mayo Medical School",
                    "University of Arizona College of Medicine - Tucson",
                    "University of Arizona College of Medicine - Phoenix",
                    "University of Arkansas for Medical Sciences/UAMS College of Medicine",
                    "California Northstate University College of Medicine",
                    "Charles R. Drew University of Medicine and Science",
                    "Keck School of Medicine of University of Southern California",
                    "Loma Linda University School of Medicine",
                    "Stanford University School of Medicine",
                    "University of California, Davis School of Medicine",
                    "University of California, Irvine School of Medicine",
                    "David Geffen School of Medicine at UCLA",
                    "University of California, Riverside School of Medicine",
                    "University of California, San Diego School of Medicine",
                    "UCSF School of Medicine",
                    "University of Colorado School of Medicine",
                    "Frank H. Netter M.D. School of Medicine at Quinnipiac University",
                    "University of Connecticut School of Medicine",
                    "Yale School of Medicine",
                    "George Washington University Medical School",
                    "Georgetown University School of Medicine",
                    "Howard University College of Medicine",
                    "Florida Atlantic University Charles E. Schmidt College of Medicine",
                    "Florida International University Herbert Wertheim College of Medicine",
                    "Florida State University College of Medicine",
                    "University of Central Florida College of Medicine",
                    "University of Florida College of Medicine",
                    "University of Miami Leonard M. Miller School of Medicine",
                    "University of South Florida College of Medicine",
                    "Emory University School of Medicine",
                    "Medical College of Georgia at Augusta University",
                    "Mercer University School of Medicine",
                    "Morehouse School of Medicine",
                    "University of Hawaii at Manoa John A. Burns School of Medicine",
                    "Loyola University Chicago Stritch School of Medicine",
                    "Northwestern University Feinberg School of Medicine",
                    "Chicago Medical School of Rosalind Franklin University of Medicine and Science",
                    "Rush Medical College",
                    "Southern Illinois University School of Medicine",
                    "University of Chicago Pritzker School of Medicine",
                    "University of Illinois College of Medicine",
                    "Indiana University School of Medicine",
                    "University of IowaRoy J. and Lucille A. Carver College of Medicine",
                    "University of Kansas School of Medicine",
                    "University of Kentucky College of Medicine",
                    "University of Louisville School of Medicine",
                    "Louisiana State University School of Medicine in New Orleans",
                    "Louisiana State University School of Medicine in Shreveport",
                    "Tulane University School of Medicine",
                    "Johns Hopkins University School of Medicine",
                    "Uniformed Services University of the Health Sciences F. Edward Hebert School of Medicine",
                    "University of Maryland School of Medicine",
                    "Boston University School of Medicine",
                    "Harvard Medical School",
                    "Tufts University School of Medicine",
                    "University of Massachusetts Medical School",
                    "Central Michigan University College of Medicine",
                    "Michigan State University College of Human Medicine",
                    "University of Michigan Medical School",
                    "Oakland University William Beaumont School of Medicine",
                    "Wayne State University School of Medicine",
                    "Western Michigan University Homer Stryker M.D. School of Medicine",
                    "Mayo Clinic College of Medicine",
                    "University of Minnesota Medical School",
                    "University of Mississippi School of Medicine",
                    "Saint Louis University School of Medicine",
                    "University of Missouri-Columbia School of Medicine",
                    "University of Missouri–Kansas City School of Medicine",
                    "Washington University School of Medicine",
                    "Creighton University School of Medicine",
                    "University of Nebraska College of Medicine",
                    "University of Nevada, Las Vegas School of Medicine",
                    "University of Nevada, Reno School of Medicine",
                    "Dartmouth CollegeGeisel School of Medicine",
                    "Cooper Medical School of Rowan University",
                    "Rutgers New Jersey Medical School",
                    "Rutgers Robert Wood Johnson Medical School",
                    "University of New Mexico School of Medicine",
                    "Albany Medical College",
                    "Albert Einstein College of Medicine",
                    "Columbia University Roy and Diana Vagelos College of Physicians and Surgeons",
                    "CUNY School of Medicine",
                    "Hofstra Northwell School of Medicineat Hofstra University",
                    "Icahn School of Medicine at Mount Sinai",
                    "New York Medical College",
                    "New York University School of Medicine",
                    "Stony Brook University School of Medicine",
                    "State University of New York Upstate Medical University",
                    "State University of New York Downstate Medical CenterCollege of Medicine",
                    "Jacobs School of Medicine and Biomedical Sciences, University at Buffalo",
                    "University of Rochester School of Medicine and Dentistry",
                    "Weill Cornell Medical College",
                    "The Brody School of Medicine at East Carolina University",
                    "Duke University School of Medicine",
                    "University of North Carolina School of Medicine",
                    "Wake Forest School of Medicine",
                    "University of North Dakota School of Medicine and Health Sciences",
                    "Boonshoft School of Medicine at Wright State University",
                    "Case Western Reserve University School of Medicine",
                    "Cleveland Clinic Lerner College of Medicine",
                    "Northeast Ohio Medical University College of Medicine",
                    "The Ohio State University College of Medicine",
                    "University of Cincinnati College of Medicine",
                    "University of Toledo College of Medicine",
                    "University of Oklahoma College of Medicine",
                    "University of Oklahoma School of Community Medicine",
                    "Oregon Health & Science UniversitySchool of Medicine",
                    "Geisinger Commonwealth School of Medicine",
                    "Drexel University College of Medicine",
                    "Pennsylvania State University College of Medicine",
                    "Perelman School of Medicine at the University of Pennsylvania",
                    "Sidney Kimmel Medical College at Thomas Jefferson University",
                    "Temple University School of Medicine",
                    "University of Pittsburgh School of Medicine",
                    "Universidad Central del Caribe School of Medicine",
                    "Ponce School of Medicine",
                    "San Juan Bautista School of Medicine",
                    "University of Puerto Rico School of Medicine",
                    "Alpert Medical School at Brown University",
                    "Medical University of South CarolinaCollege of Medicine",
                    "University of South Carolina School of Medicine",
                    "University of South Carolina School of Medicine Greenville",
                    "Sanford School of Medicine of the University of South Dakota",
                    "East Tennessee State University James H. Quillen College of Medicine",
                    "Meharry Medical College School of Medicine",
                    "University of Tennessee College of Medicine",
                    "Vanderbilt University School of Medicine",
                    "Baylor College of Medicine",
                    "Texas A&M Health Science Center College of Medicine",
                    "Texas Tech University Health Sciences Center Paul L. Foster School of Medicine",
                    "Texas Tech University Health Sciences Center School of Medicine",
                    "University of Texas Medical BranchSchool of Medicine",
                    "University of Texas Medical School at Houston",
                    "University of Texas School of Medicine at San Antonio",
                    "University of Texas Rio Grande Valley School of Medicine",
                    "University of Texas Southwestern Medical School at Dallas",
                    "Dell Medical School at The University of Texas at Austin",
                    "University of Utah School of Medicine",
                    "University of Vermont College of Medicine",
                    "Eastern Virginia Medical School",
                    "University of Virginia School of Medicine",
                    "VCU School of Medicine, Medical College of Virginia Health Sciences Division",
                    "Virginia Tech Carilion School of Medicine and Research Institute",
                    "University of Washington School of Medicine",
                    "Washington State University Elson S. Floyd College of Medicine",
                    "Joan C. Edwards School of Medicineat Marshall University",
                    "West Virginia University School of Medicine",
                    "Medical College of Wisconsin",
                    "University of Wisconsin School of Medicine and Public Health"].sample,
    practice_id: (1..19).to_a.sample,
    IsInactive: [true, false].sample,
    phone: Faker::PhoneNumber.cell_phone,
    created_at: Faker::Date.between(45.days.ago, Date.today),
    updated_at: Faker::Date.between(5.days.ago, Date.today),
  )
  doctor.save!
end
puts 'Finished for doctors!'

puts 'Creating 50 fake drugs...'

array_drugs = ["Atorvastatin Calcium",
"Levothyroxine",
"Lisinopril",
"Omeprazole",
"Metformin",
"Amlodipine",
"Simvastatin",
"Hydrocodone/Acetaminophen",
"Metoprolol ER",
"Losartan",
"Azithromycin",
"Zolpidem",
"Hydrochlorothiazide",
"Furosemide",
"Metoprolol",
"Pantoprazole",
"Gabapentin",
"Amoxicillin",
"Prednisone",
"Sertraline",
"Tamsulosin",
"Fluticasone",
"Pravastatin",
"Tramadol",
"Montelukast",
"Escitalopram",
"Carvedilol",
"Alprazolam",
"Warfarin",
"Meloxicam",
"Clopidogrel",
"Amoxicillin/Potassium Clavulanate ER",
"Allopurinol",
"Bupropion",
"Lisinopril/HCTZ",
"Citalopram",
"Losartan Potassium",
"Atenolol",
"Cialis",
"Duloxetine",
"Fluoxetine",
"Fenofibrate",
"Crestor",
"Venlafaxine",
"Ventolin",
"Amphetamine/Dextroamphetamine",
"Cyclobenzaprine",
"Trazodone",
"Methylprednisolone",
"Potassium Chloride",]

array_drugs.each do |drug|
  drug = Drug.new(
    name: drug,
    IsAvailable: [true, true, true, true, true, true, true, false].sample
  )
  drug.save!
end
puts 'Finished for drugs!'


puts 'Creating 300 fake appointments...'

300.times do
  appointment = Appointment.new(
    date: Faker::Time.between(DateTime.now - 1, DateTime.now + 365),
    IsCancelled: [true, false].sample,
    IsPaid: [true, false].sample,
    doctor_id: (1..149).to_a.sample,
    patient_id: (1..149).to_a.sample,
    created_at: Faker::Date.between(75.days.ago, Date.today),
    updated_at: Faker::Date.between(2.days.ago, Date.today),
  )
  appointment.save!
end
puts 'Finished for appointments!'


puts 'Creating 300 fake prescriptions...'
300.times do
  prescription = Prescription.new(
    description: Faker::Lorem.sentence,
    IsOrdered: [true, false].sample,
    appointment_id: (1..299).to_a.sample,
    created_at: Faker::Date.between(75.days.ago, Date.today),
    updated_at: Faker::Date.between(2.days.ago, Date.today),
  )
  prescription.save!
end
puts 'Finished for prescriptions!'


puts 'Creating 150 fake bundledrugs...'
150.times do
  bundledrug = Bundledrug.new(
    IsDelivered: [true, true, true, true, true, true, true, true, true, false].sample,
    IsReceived: [true, true, true, true, true, true, true, false].sample,
    prescription_id: (1..299).to_a.sample,
    drug_id: (1..49).to_a.sample,
    created_at: Faker::Date.between(75.days.ago, Date.today),
    updated_at: Faker::Date.between(2.days.ago, Date.today),
  )
  bundledrug.save!
end
puts 'Finished for bundledrugs!'





