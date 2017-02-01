class Access

  # A. Given the following data structure:
   a = ["Anil", "Erik", "Jonathan"]
  #
  # # 1. How would you return the string "Erik"?
  # a.each do |value|
  #   if value == "Erik"
  #     puts "#{value}"
  #   end
  # end
  #
  # # 2. How would you add your name to the array?
  # a.push("Sergio")
  # puts a
  #
  # # B. Given the following data structure:
  h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
  #
  # # 1. How would you return the string "One"?
  # puts h[1]

  # 2. How would you return the string "Two"?
  # puts h[:two]

  # 3. How would you return the number 2?
  # puts h["two"]

  # 4. How would you add {3 => "Three"} to the hash?
  # val = 3
  # h[3] = "Three"
  # puts h

  # 5. How would you add {:four => 4} to the hash?
  # h[:four] = 4
  # puts h


  # C. Given the following data structure:
  is = {true => "It's true!", false => "It's false"}

  # 1. What is the return value of is[2 + 2 == 4]?
  # puts is[2 + 2 == 4]

  # 2. What is the return value of is["Erik" == "Jonathan"]?
  # puts is["Erik" == "Jonathan"]

  # 3. What is the return value of is[9 > 10]?
  # puts is[9 > 10]

  # 4. What is the return value of is[0]?
  # puts is[0]

  # 5. What is the return value of is["Erik"]?
  # puts is["Erik"]


  # D. Given the following data structure:
  users = {
    "Jonathan" => {
      :twitter => "tronathan",
      :favorite_numbers => [12, 42, 75],
    },
    "Erik" => {
      :twitter => "sferik",
      :favorite_numbers => [8, 12, 24],
    },
    "Anil" => {
      :twitter => "bridgpal",
      :favorite_numbers => [12, 14, 85],
    },
  }

  # 1. How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
  # puts users["Jonathan"][:twitter]

  # 2. How would you add the number 7 to Erik's favorite numbers?
  # users["Erik"][:favorite_numbers].push(7)
  # puts users

  # 3. How would you add yourself to the users hash?
  # users ["Sergio"] = {}
  # users ["Sergio"][:twitter] = "chroc"
  # users ["Sergio"][:favorite_numbers] = []
  # users ["Sergio"][:favorite_numbers].push(7)
  # users ["Sergio"][:favorite_numbers].push(10)
  # users ["Sergio"][:favorite_numbers].push(30)
  # puts users

  # 4. How would you return the array of Erik's favorite numbers?
  # puts "#{users["Erik"][:favorite_numbers]}"

  # 5. How would you return the smallest of Erik's favorite numbers?
  # puts "#{users["Erik"][:favorite_numbers].min}"

  # 6. How would you return an array of Anil's favorite numbers that are also even?

  # 7. How would you return an array of the favorite numbers common to all users?
  # puts "#{users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers] & users["Jonathan"][:favorite_numbers]}"

  # 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
  new_array.push(users["Anil"][:favorite_numbers])



end
