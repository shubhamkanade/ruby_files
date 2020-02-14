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

        
        def self.is_linkedlist_same(head1,head2,count1,count2)
            if(count1!=count2)
                print("Enter linkedlist which are not same in size")
                return
            end

            while(head1!=nil && head2!=nil)
                if(head1.data!=head2.data)
                    break
                end
                head1=head1.next
                head2=head2.next
            end

            if(head1==nil)
                return true
            else
                return false
            end

        end

        def count_nodes()
            current=@head
            count=0
            while(current!=nil)
                count+=1
                current=current.next
            end
            return count
        end
end 

singlylinkedlist1=SinglyLinkedList.new

puts "Enter Number of nodes you want to insert for 1st linkedlist"
no_of_nodes=gets().chomp().to_i()


#node=1
for node in (1..no_of_nodes)
    node=gets().chomp().to_i()
    singlylinkedlist1.append(node)
end

print(singlylinkedlist1.count_nodes())
puts("\n If you want check whether two linklinked list are same then you can create 2nd linkedlist\n","typt 1:create linkedlist , Type 2:i dont want check whether linked list are same or not NOTE:typoe should be 1 or 0\n")

check=gets().chomp().to_i()
if(check==1)
    singlylinkedlist2=SinglyLinkedList.new
    puts "Enter Number of nodes you want to insert for 2nd linkedlist"
    no_of_nodes=gets().chomp().to_i()
    for node in (1..no_of_nodes)
    node=gets().chomp().to_i()
    singlylinkedlist2.append(node)
    end
    #print(singlylinkedlist1.sendhead())
    if(SinglyLinkedList.is_linkedlist_same(singlylinkedlist1.sendhead(),singlylinkedlist2.sendhead(),singlylinkedlist1.count_nodes(),singlylinkedlist2.count_nodes()))
        puts("list of integers of linked list is equals")
    else
        puts("list of integers of linked list is not same")
    end

end
puts("\nThe elements of the first linked list are\n")
singlylinkedlist1.display()









=begin

def insert(value)

    newnode=Node.new(value)

    while(true)

        if(@head==nil)
            @head=newnode
            break
        else
            current=@head
            if current.data==value
                break
            elsif value<current.data
                if(current.leftchild==nil)
                    current.leftchild=newnode
                    break
                else
                    while(current.leftchild!=nil)
                       current=current.leftchild
                    end
                    current.leftchild=newnode
                    break
                end
            elsif value>current.data
                if(current.rightchild==nil)
                    current.rightchild=newnode
                    break
                else
                    while(current.rightchild!=nil)
                       current=current.rightchild
                    end
                    current.rightchild=newnode
                    break
                end
            end
        end
    end
end

def insert(value)
    #puts "Inserting :" + value.to_s
    current_node = @head
if(@head==nil)
        @head=Node.new(value)
        #count+=1
else
    while nil != current_node
        #count+=1
        if (value < current_node.value) && (current_node.leftchild == nil)
            current_node.leftchild = Node.new(value)
        elsif  (value > current_node.value) && (current_node.rightchild == nil)
            current_node.rightchild = Node.new(value)
        elsif (value < current_node.value)
            current_node = current_node.leftchild
        elsif (value > current_node.value)
            current_node = current_node.rightchild
        else
            return
        end
    end
end
end
=end