require_relative './stack'
require 'pry'

class MyQueue

    def initialize 
        @s1 = Stack.new
        @s2 = Stack.new
    end    

    def add value
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        @s2.push value
        until @s2.empty? do
            @s1.push(@s2.pop)
        end
    end

    def remove
        # binding.pry
        # until @s1.empty? do
        #     @s2.push(@s1.pop)
        # end
        # result = @s2.pop
        # binding.pry
        # until @s2.empty? do
        #     @s1.push(@s2.pop)
        # end
        # result
        @s1.pop
    end

    def peek
        @s1.peek
    end

end
