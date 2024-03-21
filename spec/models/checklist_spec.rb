require 'rails_helper'

RSpec.describe Checklist, type: :model do
  let(:user) { User.create(username: 'testuser', email: 'test@example.com', password: 'password') }
  let(:job) { Job.create(job_title: 'Software Engineer', company: 'Test Company', user: user) }

  it "is valid with valid attributes" do
    checklist = Checklist.new(title: 'Test Checklist', details: 'Test details', job: job)
    expect(checklist).to be_valid
  end

  it "is not valid without a title" do
    checklist = Checklist.new(title: nil)
    expect(checklist).to_not be_valid
  end

  it "is not valid without a job" do
    checklist = Checklist.new(job: nil)
    expect(checklist).to_not be_valid
  end
end
