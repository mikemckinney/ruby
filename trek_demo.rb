#trek_demo.rb
#ruby 2.1.5
#
#Initiate program to list, create, modify, and search a hash
class Officer
  @@crew = {
  	    Worf: "Operations",
        LaForge: "Engineering",
        Picard: "Command"
}

  attr_accessor :section
  attr_accessor :name

  def initialize(name, section)
	@name = name
	@section = section
        @@crew[name.to_sym] = section
  end
  def self.crew_list
	@@crew
  end
  def reassign_officer(name, newjob)
        @@crew[name.to_sym] = newjob
  end
end

#Initiate program with menu using while loop

off = ["engineering", "command", "operations"]

ex = ""
while ex != 5

puts "Contacting Starfleet Command.. \n Please Enter Selection: \n 1. View crew roster \n 2. Assign new crewman \n 3. Reassign officer \n 4. Find all officers in a section \n 5. Exit \n Enter Selection: "
choice = gets.chomp.to_i


case choice
  when 1
    Officer.crew_list.each do |name, section|
    puts "#{name} assigned to #{section.upcase}. \n" 
  end

  when 2
    puts "Enter officer's name: "
      name = gets.chomp.capitalize
    puts "Enter assignment, Command, Engineering, or Operations: "
      section = gets.downcase.chomp.to_s
    if 
        off.include?(section)
        Officer.new(name, section)
        puts "Officer #{name.capitalize} has been assigned to #{section.upcase}. \n"
    else 
        puts "Please enter a valid section \n"
    end

  when 3
    puts "Enter the name of the officer to reassign: " 
      name = gets.chomp.capitalize
    puts "What section will #{name} be transferred to?"
      section = gets.downcase.chomp.to_s
    if 
      off.include?(section) && Officer.crew_list.include?(name.to_sym)
      Officer.crew_list[name.to_sym] = section
      puts "#{name.capitalize} has been moved to #{section.upcase}.\n "
    else 
      puts "Please enter a valid section \n"
    end
 
  when 4
    puts "Enter section to list: "
      section = gets.chomp
    Officer.crew_list.each do |name, job|
    if section == job 
       puts "#{name} \n" 
    else
       puts "Enter valid selection"
    end  
  end
  when 5
    puts "Quitting"
    ex = 5 
  end
end


