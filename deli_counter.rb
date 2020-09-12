require 'pry'
def line(katz_deli)
    if katz_deli.count == 0
        puts "The line is currently empty."
        katz_deli
    else
        line_array = katz_deli.each_with_index.collect do |name, num|
            name = "#{num + 1}. #{name}"
        end
        puts "The line is currently: #{line_array.join(" ")}"
    end
end

def take_a_number(katz_deli, new_customer)
    katz_deli << new_customer
    customer_number = katz_deli.index(new_customer) + 1    
    puts "Welcome, #{new_customer}. You are number #{customer_number} in line."
    katz_deli
end

def now_serving(katz_deli)
    if katz_deli.count == 0
        puts "There is nobody waiting to be served!"
    else
        currently_served = katz_deli.shift
        puts "Currently serving #{currently_served}."
        katz_deli
    end
end