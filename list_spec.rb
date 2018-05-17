require "rspec"
require "rspec-given"
require_relative "list"
require_relative 'task'

describe List do
  let(:newList){List.new("ToDoList")}
	let(:task){Task.new("description")}
	context "initialize" do
		it "has title" do
			expect{newList.title}.to_not raise_error
		end

		it "has tasks" do
			expect{newList.tasks}.to_not raise_error
		end

		it "has empty tasks" do
			expect(newList.tasks).to eq([])
		end
	end


	describe "#add_task" do
		it "adds task to tasks" do 
			expect{newList.add_task(task)}.to change(newList.tasks, :count).from(0).to(1)
		end
	end


	 describe '#complete_task' do
    	it "should complete the task" do
      		newList.add_task(task)
     			newList.complete_task(0)
     		end
     	end

     	describe "#completed_tasks" do
     		it "should check if task is completed" do
     			newList.completed_tasks[0] == true
     		end
     	end

     		describe "#incomplete_tasks" do
     		it "should check incompleted tasks" do
     			newList.completed_tasks[0] == false
     		end
     	end

     	describe "#delete_task" do
     	it "delete task from list" do
     		newList.add_task(task)
     		newList.delete_task(0)
     		expect(newList.tasks).to eq([])

     	end
     end



end