class Node
    attr_accessor :leftchild
    attr_accessor :data
    attr_accessor :rightchild
    #attr_reader :data

    def initialize(value)
        @data=value
        @rightchild=rightchild
        @rightchild=nil
    end
end


class Tree 
    
    def initialize()
        @head=nil
        @@count=0
    end

    def insert1(value)

        newnode=Node.new(value)
    
        while(true)
    
            if(@head == nil)
                @head=newnode
                break
            else
                current = @head
                if(current.data)==value
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
    def self.count_return()
        return @@count
    end

    def count_node(base= @head)
            #return if base==nil
                if(base != nil)
                @@count+=1
                count_node(base.leftchild)
                count_node(base.rightchild)
                end
    end
    
end


treeinsert=Tree.new

puts("Enter number of nodes do you want to insert")
no_of_nodes=gets().chomp().to_i()

for node in (1..no_of_nodes)
#(1..no_of_nodes).each do |node|
node=gets().chomp().to_i()
treeinsert.insert1(node)
end

treeinsert.display_node()
puts( "Total number of nodes is ",Tree.count_return())
