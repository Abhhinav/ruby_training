require "active_support/inflector"

$hash = {
    users: [
      {id:1, username:"user1"}, 
      {id:2, username:"user2"}
    ],
    tasks: [
      { id:1, title:"task 1", completed: true}, 
      { id:2,title:"task 2", completed: false}, 
      { id:3, title: "task 3", completed: true}
    ],
    projects: [
      { id: 1, title: "Project 1", owner: "rajesh"},
      { id: 2, title: "Project 2", owner: "rajesh"},
      { id: 3, title: "Project 3", owner: "urvashi"},
      { id: 4, title: "Project 4", owner: "radhika"}
    ],
    groups: [
        {id: 1, title: "RoR", people: 5},
        {id: 2, title: "Scala", people: 7},
        {id: 3, title: ".Net", people: 11},
        {id: 4, title: "RoR", people: 9},
        {id: 5, title: "RoR", people: 3}

    ]
  }
  class Model
    # def initialize 
    #     puts "#{self} #{class_name} initializing!"
    # end

    def self.connect
        #p self
        #p to_s.downcase.pluralize
        class_name = to_s.downcase.pluralize
        @data = $hash[:"#{class_name}"]
        p @data
    end
    def self.data
        @data
    end
    def self.method_missing(method, *args, &block)
    tokens = method.to_s.split("_")
    search = tokens[2]
    if tokens[0] == "find"
        result =[]
        self.data.each do |row|
            if row.key?(search.to_sym)
                if args[0] == row[search.to_sym]
                    result << row
                end
            end
        end
        result
    else
    super
    end
    end
  end
  class User < Model
    connect
    end
    class Task < Model
        connect
    end
    class Project < Model
        connect
    end  
    class Group < Model
        connect
    end 
  puts "Find User by id : 2"
  user1 = User.find_by_id(2)
  p user1
  
  puts "Find task by id 1"
  task = Task.find_by_id(1) 
  p task 
  
  puts "Find completed tasks"
  tasks = Task.find_by_completed(true)
  p tasks
  
  puts "Find task by title 'task 1'"
  tasks = Task.find_by_title("task 1")
  p tasks
  
  puts "Find project for rajesh"
  projects = Project.find_by_owner("rajesh")
  p projects
  
  puts "Find group for RoR"
    groups = Group.find_by_title("RoR")
    p groups