require 'rails_helper'

RSpec.describe ChecklistItem, type: :model do
  let(:user) { User.create(username: 'testuser', email: 'test@example.com', password: 'password') }
  let(:job) { Job.create(job_title: 'Software Engineer', company: 'Test Company', user: user) }
  let(:checklist) { Checklist.create(title: 'Test Checklist', details: 'Test details', job: job) }

  it "is valid with valid attributes" do
    checklist_item = ChecklistItem.new(task: 'Test task', checklist: checklist)
    expect(checklist_item).to be_valid
  end

  it "is not valid without a task" do
    checklist_item = ChecklistItem.new(task: nil)
    expect(checklist_item).to_not be_valid
  end

  it "is not valid without a checklist" do
    checklist_item = ChecklistItem.new(checklist: nil)
    expect(checklist_item).to_not be_valid
  end
end