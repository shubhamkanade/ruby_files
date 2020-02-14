class Node
    
    attr_accessor :next
    attr_reader   :data

    def initialize(value)
        @data=value
        @next=nil
    end
end

class SinglyLinkedList

        def initialize()
            @head=nil
        end

        def append(value) # function name
            newnode=Node.new(value)
            if(@head==nil)
                @head=newnode
            else
                current=@head
                while(current.next!=nil)
                    current=current.next
                end
                current.next=newnode
            end
        end

        def display()
            current=@head
            
            while(current!=nil)
                print(current.data," ")
                current=current.next
            end
        end

        def deletenode(skipnodes,deletenodes) #skipnode plurals
            
            current=@head
            while((skipnodes-1)!=0)
                current=current.next
                skipnodes-=1
            end

            # first=nil
            first=current.next
            while(deletenodes!=0)
                first=first.next
                deletenodes-=1
            end
            
            current.next=first

        end
end

singlylist=SinglyLinkedList.new #object name should not be in caps

print("Enter the number of nodes to insert into linkedlist\n") #
no_of_nodes=gets().chomp().to_i()
for node in (1..no_of_nodes)
  node=gets().chomp().to_i()
  singlylist.append(node) 
end

print("Elements in the linked list are\n")
singlylist.display()
puts("Enter the nodes to skip and delete ")
skipnode=gets().chomp().to_i()
deletenode=gets().chomp().to_i()
singlylist.deletenode(skipnode,deletenode)
print("\nafter deleting nodes following linked list is formed\n")
#Singlylist.Display_linkedlist()
singlylist.display()