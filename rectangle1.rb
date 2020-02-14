class Rectangle

    def initialize length,breadth
        @length=length
        @breadth=breadth
    end

    def self.create_square side
        Rectangle.new side ,side
    end

    def area
        @length * @breadth
    end
end

