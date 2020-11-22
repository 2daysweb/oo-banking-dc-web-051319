class BankAccount
    attr_reader :name
    attr_accessor :balance, :status
    
    def initialize(name)
        @name = name
        @status = 'open'
        @balance = 1000
    end

    def deposit(amount)
        @balance = @balance + amount
    end

    def display_balance
        puts("Your balance is $#{@balance}.")
    end

    def valid?
        @status == 'open' && @balance > 0? true : false
    end 

    def close_account
        @status = 'closed'
    end
end
