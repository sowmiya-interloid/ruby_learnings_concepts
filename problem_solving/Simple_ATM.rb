balance=5000

loop do

 p "1.Check Balance 2.Deposit Money 3.Wthdarw Money 4.Exit"

choice=gets.chomp.to_i

    case choice

    when 1
        puts "You're available balance is #{balance}"
    when 2
        puts "Enter the Depoist Money:"
        depoist_money=gets.chomp.to_i
        balance=balance+depoist_money
        p balance
        puts "Updated balance is #{balance}"
    when 3
        puts "Enter the withdraw Money:"
        withdraw_money=gets.chomp.to_i
        if(withdraw_money<balance)
            balance=balance-withdraw_money
            p balance
            
        else
            p "Insufficient Amount!!!!!!!!!!"
        end

    when 4
        
        p "Thank you for using ATM"
        break
    end
end