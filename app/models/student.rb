class Student

    attr_reader :first_name, :test_name, :status, :instructor

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def add_boating_test(test_name, status, instructor)
      new_test = BoatingTest.new(self, test_name, status, instructor)
      new_test 
    end 

    def self.find_student(first_name)
        self.all.select do |student_with_first_name|
            student_with_first_name.first_name == first_name
        end 
    end 

    def grade_percentage 
      passed = BoatingTest.all.select do |test|
        test.status == "passed" #first checking how many tests passed and storing it into a variable - passed
      end 
      total_test = BoatingTest.all.select do |test|
        test.status #then checking to see how many tests there were in total. The statuses will indicate total number of test and stored into variable - total_test
      end 
        percent = passed.length.to_f / total_test.length.to_f
        percent * 100 #outputs 33.33333333333333 :(
        end 
      
end
