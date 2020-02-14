def Hallow_pattern(no_of_rows)
no_of_column = 0
        for row in (1..no_of_rows)
            no_of_column = no_of_rows*2
            for column in (1..no_of_column)
                if(is_star_print(column,no_of_column,no_of_rows,row))
                        print("* ")
                    else
                        print("  ")
                    end
                end
                puts
        end
end   

def is_star_print(column,no_of_column,no_of_rows,row)
    return (column<=((no_of_column-(no_of_rows-1))-row)||(column>=(no_of_column-no_of_rows)+row))
end

p "Enter the no. of lines :- "
no_of_lines=gets().chomp().to_i()
Hallow_pattern(no_of_lines)