class Hello

    def initialize(name)
        @name=name
    end

    def display()
        puts "hello #{@name}"
    end
end

first=Hello.new("ruby")
first.display()