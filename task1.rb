

def largest_num(arr)
  first = 0 #To Store Largest Number
  second = 0 #To Store Second Largest Number
  third = 0 #To Store Third Largest Number

  for element in arr #Finding Largest Number
    if element > first
      first = element
    end
  end

  for element in arr #Finding 2nd Largest Number
    if element > second && element < first
      second = element
    end
  end

  for element in arr #Finding 3rd Largest Number
    if element > third && element < second
      third = element
    end
  end

  return third
end




def remove_duplicates(arr)
  filtered_arr = [] #This array will be returned

  for element in arr #Iterating over the given array
    duplicate = false

    for number in filtered_arr #looping over the filtered array to check if the current element is already in the filtered array
      if element == number #if the current element matches a number in the filtered array
        duplicate = true
        break
      end
    end

    if !duplicate #if the current element was not found in the filtered array .i.e. it is not a duplicate
      filtered_arr << element
    end
  end

  return filtered_arr
end




def count_occurances(arr, num)
  occurances = 0

  for element in arr
    if num == element
      occurances += 1
    end
  end

  return occurances
end




# The Code Below is not relevant to the task itself. It is just to call the functions that were mentioned in the task.


def call_count_occurances(arr)
  puts "Enter a Number: "
  num = gets.chomp
  num = num.to_i
  puts "Total Occurances of #{num}: #{count_occurances(arr, num)}"
end




def show_menu

  arr = []

  puts "Enter the length of the Array: "
  length = gets.chomp.to_i

  for i in 0..(length-1)
    puts "Enter Element##{i+1}: "
    arr << gets.chomp.to_i
  end


  while (true)
    puts "1.Find Third Largest Number \n2.Remove Duplicates \n3.Count Occurances of a Number"
    ans = gets.chomp

    if ans == "1"
      puts "Third Largest Number: #{largest_num(arr)}"
    elsif ans == "2"
      puts "After Removing Duplicates: #{remove_duplicates(arr)}"
    elsif ans == "3"
      call_count_occurances(arr)
    elsif ans == "0"
      puts "Exiting..."
      break
    else
      puts "Invalid Input..."
    end

    puts "Press Any Key To Continue..."
    STDIN.getc
    system("clear")

  end

end


show_menu