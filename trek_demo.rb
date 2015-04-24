class Officer
  @@crew = {
  	Worf: "operations",
        LaForge: "engineering",
        Picard: "command"
}

  attr_accessor :job
  attr_accessor :name

  def initialize(name, job)
	@name = name
	@job = job
        @@crew[name.to_sym] = job
  end
  def self.crew_list
	@@crew
  end
  def reassign_officer(name, newjob)
        @@crew[name.to_sym] = newjob
  end
end
ex = ""
while ex != 5

puts "Contacting Starfleet Command.. "
puts "Please Enter Selection: "
puts "1. View crew roster"
puts "2. Assign new crewman"  
puts "3. Reassign officer"
puts "4. Find all officers in a section"
puts "5. Exit"
puts "Enter Selection: "

choice = gets.chomp.to_i


case choice
  when  1
	Officer.crew_list.each do |name, job|
        puts "#{name} assigned to #{job}." 
  end
  when  2
        puts "Enter officer's name: "
	   name = gets.chomp
        puts "Enter assignment, Command, Engineering, or Operations"
          job = gets.chomp
          Officer.new(name, job)
        puts "Officer #{name} has been assigned to #{job}."

  when  3
	 puts "Enter the name of the officer to reassign: " 
           name = gets.chomp
	 puts "What section will #{name} be transferred to?"
	   section = gets.chomp
	   Officer.crew_list[name.to_sym] = section.to_s
	 puts "#{name} has been moved to #{section}."
 
  when  5
	puts "Quitting"
	ex = 5 
end
end


