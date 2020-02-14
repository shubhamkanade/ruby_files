class Node
    attr_accessor :next
    attr_reader :data

    def initialize(value)
        @data=value
        @next=nil
    end
end

class SinglyLinkedList
        
    def initialize()
        @head=nil
    end

    def sendhead()
        return @head
    end

    def append(value) # function name
        newnode=Node.new(value)
        count=0
        if(@head==nil)
            @head=newnode
        else
            current=@head
            while(current.next!=nil)
                current=current.next
            end
            current.next=newnode
            count+=1
        end
    end

    def display()
        current=@head
        while(current!=nil)
            print(current.data," ")
            current=current.next
        end
    end

    def reverse_linkedlist()
        first=nil
        current=@head
        second=nil

        while(current!=nil)
            second=current.next
            current.next=first
            first=current
            current=second
        end
        @head=first
    end
end

singlylinkedlist1=SinglyLinkedList.new

singlylinkedlist1.append(10)
singlylinkedlist1.append(20)
singlylinkedlist1.append(30)

singlylinkedlist1.display()
puts

singlylinkedlist1.reverse_linkedlist()
singlylinkedlist1.display()


