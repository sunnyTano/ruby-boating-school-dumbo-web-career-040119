class Instructor

@@all = []

def initialize(name)
    @name = name
    @@all << self
end 

def self.all
    @@all
end 

def pass_student(student, test_name)
BoatingTest.all.select do |test|
    test.student == student && test.test_name == test_name
    test.status = "passed"
end
    BoatingTest.new(student, test_name, status= "passed", self)
end

def fail_student(student, test_name)
    BoatingTest.all.select do |test|
        test.student == student && test.test_name == test_name
        test.status = "failed"
    end
        BoatingTest.new(student, test_name, status= "failed", self)
    end

end
