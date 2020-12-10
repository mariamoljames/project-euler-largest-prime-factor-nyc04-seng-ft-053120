class LargestPrimeFactor
    attr_accessor :number
    def initialize(input)
        @number = largest_prime_factor(input)
    end
    def largest_prime_factor(input)
        @number=input
        for i in 2..Math.sqrt(@number).round()
            while(@number%i==0 && @number>i)
                @number/=i
            end
        end
        @number
    end
end