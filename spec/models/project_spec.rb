require 'rails_helper'
describe "Project Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating project" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end
    it "ensures the description is present when creating project" do
        project = Project.new(title: "Content of the title")
        expect(project.valid?).to eq(false)
    end
    it "should not be able to save project when title missing" do
      project = Project.new(description: "Some description content goes here")
      expect(project.save).to eq(false)
    end
    it "should be able to save project when have description and title" do
      project = Project.new(title: "Title", description: "Content of the description", day: "Monday", event_type: "Default", priority: 5)
      expect(project.save).to eq(true)
    end
  end
end
describe "Project Attribute Requirements on Edit", :type => :model do
  context "Edit project" do 
    before (:each) do
      @project = Project.create(title: "Title", description: "Content of the description", day: "Monday", event_type: "Default", priority: 5)
 
      end
    it "ensures the title is present when editing project" do
        @project.update(:title => "New Title")
        expect(@project.title == "New Title")
    end
    it "ensures the description is present when editing project" do
        @project.update(:description => "Test description")
        expect(@project.description == "Test description")
    end
    it "ensures the day is present when editing project" do
      @project.update(:day => "Monday")
      expect(@project.day == "Monday")
    end
    it "ensures the event type is present when editing project" do
      @project.update(:event_type => "Test")
      expect(@project.event_type == "Test")
    end
    it "ensures the priority is present when editing project" do
      @project.update(:priority => 7)
      expect(@project.priority == 7)
    end
  end
end
