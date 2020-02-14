require "minitest/autorun"
require_relative "rectangle1.rb"

system "clear"

describe Rectangle do
    it 'calculate area of 4X5 rectangle' do
        rectangle = Rectangle.new 4,5 #creating object Arrange 
        area = rectangle.area #calling method Act
        expect(area).must_equal 20 #chaecking result assert
    end

    it 'calculate area of 3X4 rectangle' do
        rectangle = Rectangle.new 3,4 #creating object Arrange 
        area = rectangle.area #calling method Act
        expect(area).must_equal 12 #chaecking result assert
    end

    it 'calculate area of square with side 4' do
        square = Rectangle.create_square 5
        area = square.area
        expect(area).must_equal 25
    end

    it 'calculate area of square with side 4' do
        square = Rectangle.create_square 6
        area = square.area
        expect(area).must_equal 36
    end

end