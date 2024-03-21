require 'faker'

# Seed users
10.times do
  User.create!(
    username: Faker::Internet.unique.username,
    email: Faker::Internet.unique.email,
    password: 'password' # You can set a default password for testing
  )
end

# Seed jobs
20.times do
  Job.create!(
    status: ['pending', 'completed', 'in progress'].sample,
    user: User.all.sample,
    job_title: Faker::Job.title,
    company: Faker::Company.name,
    job_description: Faker::Lorem.paragraph,
    company_url: Faker::Internet.url,
    date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    point_of_contact: Faker::Name.name,
    job_reference: Faker::Alphanumeric.alphanumeric(number: 10),
    tech_stack: Faker::ProgrammingLanguage.name
  )
end

# Seed checklists
30.times do
  checklist = Checklist.create!(
    title: Faker::Lorem.words(number: 3).join(' '),
    details: Faker::Lorem.sentence,
    job: Job.all.sample
  )
  
  # Seed checklist items
  5.times do
    ChecklistItem.create!(
      task: Faker::Lorem.sentence,
      checklist: checklist
    )
  end
end
