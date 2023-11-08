require_relative './stack'

# your code here
class MyQueue


    def initialize() 
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        @s1.push(value)
    end

    def remove
        if @s2.empty?
            while not @s1.empty?
                @s2.push(@s1.pop)
            end
        end
        @s2.pop unless @s2.empty?
    end

    def peek
        if @s2.empty? 
            while not @s1.empty?
                @s2.push(@s1.pop)
            end
        end
        @s2.peek
    end

end