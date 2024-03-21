require 'rails_helper'

RSpec.describe Job, type: :model do
  let(:user) { User.create(username: 'testuser', email: 'test@example.com', password: 'password') }

  it "is valid with valid attributes" do
    job = Job.new(job_title: 'Software Engineer', company: 'Test Company', user: user)
    expect(job).to be_valid
  end

  it "is not valid without a job_title" do
    job = Job.new(job_title: nil)
    expect(job).to_not be_valid
  end

  it "is not valid without a company" do
    job = Job.new(company: nil)
    expect(job).to_not be_valid
  end

  it "is not valid without a user" do
    job = Job.new(user: nil)
    expect(job).to_not be_valid
  end

  it "creates a checklist after creation" do
    job = Job.create(job_title: 'Software Engineer', company: 'Test Company', user: user)
    expect(job.checklist).to_not be_nil
  end
end