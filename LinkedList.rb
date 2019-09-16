class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
    end

end 

class List

    def initilize (value)
      @head = Node.new(value, nil)
    end

    def add_to_list(value)
        current_node = @head
        while current_node.next != nil
            current_node = current_node.next
        end 
        current_node.next = Node.new(value, nil)
    end 

    def print_values(list_node)
        if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
        else
        print "nil\n"
        return
        end
    end 
end 

class Stack

   def initialize
     @first = nil
   end 

   def push(value)
     @first = Node.new(value, @first)
   end

   def pop
    raise "stack is empty" if is_empty?
    value = @first.value
    @first = @first.next_node
    value
    end 

    def is_empty
    @firts.nil?
    end
end  

stack = Stack.new
list = List.new()
node1 = Node.new(37)

list.add_to_list(node1)

#list.add_to_list(5)
# list.add_to_list(99)
# list.add_to_list(12)
 
# list.print_values(list)



