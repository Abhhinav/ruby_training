$board=[["-","-","-"],["-","-","-"],["-","-","-"]]
$flag = 0;
def display
    $board.each do |row|
        row.each do |column|
        print column
        end
        puts
    end
end
display
puts "Player 1: X"
puts "Player 2: O"
def check_row
   for row in $board do
        if row.all?("X")
            $flag = 1
        elsif row.all?("O")
            $flag = 2
        else
        end
    end
end
def check_column
    for column in $board.transpose do 
        if column.all?("X")
            $flag = 1
        elsif column.all?("O")
            $flag = 2
        else
        end
    end
end
def check_diagonol
   diagonol_1 = [$board[0][0],$board[1][1],$board[2][2]]
   diagonol_2 = [$board[2][0],$board[1][1],$board[0][2]]
    if diagonol_1.all?("X") || diagonol_2.all?("X") 
        $flag = 1
    elsif diagonol_1.all?("O") || diagonol_2.all?("O")
        $flag = 2
    else
    end
end
$counter=1
until $counter > 9 do
    puts "Enter the coordinates 0-2"
    choice = [gets.chomp.to_i , gets.chomp.to_i]
    change_row = choice[0]
    change_col = choice[1]
    if $board[change_row][change_col] == "-"
        if $counter.odd?
        $board[change_row][change_col] = "X"
        else
        $board[change_row][change_col] = "O" 
        end
        display   
        check_row
        check_column
        check_diagonol 
        if $flag != 0
        puts "Player #{$flag} wins!"
        break
        end
        if $counter==9
        puts "It's a Draw!"
        end
        $counter+=1
    else
        puts "Position already occupied, try again!"
    end
end