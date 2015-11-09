class PagesController < ApplicationController
    
    #def rand_word(num_chars)
    #  rand_word = ""
    #    num_chars.times { rand_word << (rand(25)+65).char }
    #  rand_word
    #end

    #def rand_digits(num_digits)
    #  rand[2..num_digits+1].to_s
    #end
    

    def accounts

      num_people = 3
      @accountz = []

      num_people.times do 

        account = {}

        account[:first_name] = "Jim"
        #rand_word(5)
        
        account[:last_name] = "Jones" #self.rand_word(8)
  
        account[:email] = "dope" #self.rand_word(8) + "@" + rand_word(5) + "." + ["gov","net","org","com","au","edududu"].sample

        account[:account_num] = "why" #self.rand_digits(10)

        @accountz << account

      end

    end

    def index

      fortune_bank = ["get a Big Mack [sic]",\
                       "get paid ",\
                       "get that other thing rhymes with paid",\
                       "get wasted",\
                       "hate your life",\
                       "be Bjork's wife for a day"]

      @fortune = fortune_bank.sample

    end

    def hello

        num_visits_file = File.open("/Users/sergeipreobrahensky/ACLTC/my-app/app/controllers/numvisits.txt", 'r')
        @num_visits = num_visits_file.readline.to_i
        @num_visits += 1
        File.open("/Users/sergeipreobrahensky/ACLTC/my-app/app/controllers/numvisits.txt", 'w+') {|f| f.write("#{@num_visits}")}

    end

    def wow

        @randoms = []
        6.times do 
           @randoms << rand(61)+1
        end

        @six_rand_nums_text = @randoms.join(", ")

    end

end
