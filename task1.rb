

def largest_num(arr)
  
  temp = arr.sort #Sorting The Given Array and storing it in a temporary variable
  temp = remove_duplicates(temp)

  return temp[-3] #Returning The Third Last Element of The Sorted Array

end




def remove_duplicates(arr)
  filtered_arr = [] #This array will be returned


  for element in arr
    if !filtered_arr.include?(element) #if the current element was not found in the filtered array .i.e. it is not a duplicate
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
  print "Enter a Number: "
  num = gets.chomp
  num = num.to_i
  print "Total Occurances of #{num}: #{count_occurances(arr, num)} \n"
end




def show_menu
  system("clear")

  arr = []

  print "Enter the length of the Array: "
  length = gets.chomp.to_i

  for i in 0..(length-1)
    print "Enter Element##{i+1}: "
    arr << gets.chomp.to_i
  end
  system("clear")

  while (true)
    print "Array: #{arr} \n"
    print "1.Find Third Largest Number \n2.Remove Duplicates \n3.Count Occurances of a Number \n0.Exit \n"
    print "Enter Your Choice: "
    ans = gets.chomp
    system("clear")
    
    if ans == "1"
      print "Third Largest Number: #{largest_num(arr)} \n"
    elsif ans == "2"
      print "After Removing Duplicates: #{remove_duplicates(arr)} \n"
    elsif ans == "3"
      call_count_occurances(arr)
    elsif ans == "0"
      print "Exiting... \n"
      break
    else
      print "Invalid Input..."
    end

    print "Press Any Key To Continue..."
    STDIN.getc
    system("clear")

  end

end


show_menu