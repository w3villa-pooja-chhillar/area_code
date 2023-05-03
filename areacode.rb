dial_code ={
     "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
}
def get_city(somehash)
    p somehash.keys
end

def get_areacode(key,value)
    p key[value]
end

loop do 
    puts "Do you want to look up an area based code on a city name?(Y/N)"
    answer  = gets.chomp.downcase
    break if answer != "y"
   puts "which city you want to look up for code?"
   get_city(dial_code)
   p "enter your selection"
   prompt = gets.chomp
   if dial_code.include?(prompt)
get_areacode(dial_code,prompt)
   else
    p "you have entered invalid city name"
   end
end
