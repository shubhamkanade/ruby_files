class Node

        attr_accessor :rollnumber, :name ,:address, :next

        def initialize(rollnumber,name,address)
                @rollnumber=rollnumber
                @name=name
                @address=address
                @next=nil
        end 
end

class Student 

        def initialize()
            @head=nil
        end

        def add(rollnumber,name,address) 
                #puts "in add"    
                newnode=Node.new(rollnumber,name,address)

                if(@head==nil)
                    @head=newnode
                else
                    newnode.next=@head
                    @head=newnode
                end
        end

        def is_student_present(name)

                copy=@head

                (return -1 )if copy==nil
                
                
                while copy!=nil
                    break if name==copy.name 
                    copy=copy.next
                end

                copy==nil ? (return false) : (return true)

        end

        def remove_student_entry(studentname)

                copy=@head

                while copy != nil && copy.next != nil
                    p copy.name
                    if (copy.next.name == studentname)
                        temp = copy.next
                        copy.next = temp.next
                    end
                    copy=copy.next 
                end
                puts("Student information removed successfully")
                
        end

        def update_student_entry(oldname,newname,oldaddress,newadddress)

                copy=@head

                until copy==nil
                    if(copy.name==oldname && copy.address==oldaddress)
                        copy.name=newname
                        copy.address=newadddress
                    end
                        copy=copy.next
                end

                puts("Student information is updated successfully")

        end

        def display()

                #puts "in display"
                #puts @head

                copy=@head
                #puts copy
                puts "There is no students entry available please make sure you made entry of student" if copy==nil
                
                until copy==nil
                    puts "-"*80
                    puts("rollnumber : #{copy.rollnumber}")
                    puts("name : #{copy.name}") 
                    puts("address : #{copy.address}")
                    copy=copy.next   
                    puts "-"*80 
                end
        end

end

studentinfo=Student.new

while true

    puts("Enter your choice ")
    puts("1:Adding new Student entry\n2:Search student by name\n3:Remove Stduent entry\n4:Update Student entry\n5:Display Student")
    choice=gets().chomp().to_i()
    case choice
    
    when 1
        puts("Enter how many students entry you want")
        count=gets().chomp().to_i()
        for i in 1..count   
            puts("Enter rollnumber of #{i} stduent")
            rollnumber=gets().chomp.to_i()
            puts("Enter student name of #{i} student")
            name=gets().chomp()
            puts("Enter student address of #{i} student")
            address=gets().chomp()
            studentinfo.add(rollnumber,name,address)
            #puts studentinfo
        end

    when 2
        puts("Enter the student name to Search")
        name=gets().chomp()
        result=studentinfo.is_student_present(name)
        if result==true 
            puts("student found " ) 
        elsif  result==false
            puts("student is not found");
        elsif result==-1
            puts("There is no students to search")
        end
    when 3
        puts("Enter the name of the student to remove ")
        name=gets().chomp()
        studentinfo.remove_student_entry(name)
    when 4  
            puts("Enter the student name to update")
            name=gets().chomp()
            puts("Enter new student name")
            newname=gets.chomp()
            puts("Enter address of student to update")
            address=gets().chomp()
            puts("Enter new student address")
            newadddress=gets.chomp()
            studentinfo.update_student_entry(name,newname,address,newadddress)

    when 5
             studentinfo.display()
    end
end

