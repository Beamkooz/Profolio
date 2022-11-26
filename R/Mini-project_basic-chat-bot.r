# chat-bot (rules-based)
#ordering pizza

print("Welcome to Italian'time Pizza Club")
print("How do you do?")

#Q1

print("What's your name : ")
user_name <- readLines("stdin", n=1) #รับ 1 แถว
print(paste("hi", user_name))

#Q2
print("What do you want today?")
print("1. Pizza")
print("2. KFC")
action <- readLines("stdin", n =1)
if (action == 1) {
  print("Let's Start")
} else {
  print("CLOSE NOW")
  break
}
#Q3
print("What size of pizza?")
size <- c("Large", "Meduim", "Small")
print("1. Large  2. Medium  3. Small")

cus_size <- as.numeric(readLines("stdin", n=1))

size_sum <- size[[cus_size]]
paste("Do you want ", size_sum)

#Q4
print("yes or no")
confirm_size <- readLines("stdin", n=1)

#Q5
crust <- c("Regular", "Thin")
print("What crust do you want?")
print("1. Regular 2. Thin")

cus_crust <- as.numeric(readLines("stdin", n=1))

crust_sum <- crust[[cus_crust]]
paste("Crust :", crust_sum)

#Q6

menu <- c("Chicken Supream", "Hawaiian", "Double Chesse", "Truffle", "Veggie")
print("What menu do you want?")
print("1.Chicken Supream  2.Hawaiian  3.Double Chesse  4.Truffle  5.Veggie")

cus_menu <- as.numeric(readLines("stdin", n=1))
menu_sum <- menu[[cus_menu]]
paste("Menu : ", menu_sum)

#Q7
cheese <- c("yes", "no")
print("Add Extra cheese?")
print("1.Yes 2.NO")

cus_cheese <- as.numeric(readLines("stdin", n=1))
cheese_sum <- cheese[[cus_cheese]]
paste("Add extra cheese : ", cheese_sum)

#Q8
sidedish <- c("Salad", "Chicken wings", "Onion Ring")
print("Do you want side dish?")
print("1.Yes  2.NO")
cus_sidedish1 <- as.numeric(readLines("stdin", n=1))

if (cus_sidedish1 == 1) {
  print("1.Salad  2.Chicken wings  3.Onion Rings")
  cus_sidedish2 <- as.numeric(readLines("stdin", n=1))
  sidedish2_sum <- sidedish[[cus_sidedish2]]
  paste("Add extra cheese : ", sidedish2_sum)
} else {
  print("None sidedish")
}

#Q9
drink <- c("Water", "Coke", "Beer")
print("Do you want a drink?")
print("1.Yes  2.NO")

cus_drink1 <- as.numeric(readLines("stdin", n=1))
if (cus_drink1 == 1) {
  print("1.Water  2.Coke  3.Beer")
  cus_drink2 <- as.numeric(readLines("stdin", n=1))
  drink2_sum <- drink[[cus_drink2]]
  paste("Drink : ", drink2_sum)
} else {
  print("None drink")
}

#Q10
dev <- c("Delivery", "Pick-up")
print("Delivery or Pick-up ?")
print("1.Delivery  2.Pick-up")

cus_dev<- as.numeric(readLines("stdin", n=1))
dev_sum <- dev[[cus_dev]]
if (cus_dev == 1) {
  print("Plese wait to eating at your home <3")
} else {
  print("Plese Pick-up in 30 minutes for the most delicious taste <3 
        ")
}

#Q11 summary
print("--------------------------------------------")
paste("Your order is ", 
      menu_sum, 
      crust_sum, 
      size_sum,
     "pizza")

paste("Add Extra Cheese : ", cheese_sum)
if(cus_sidedish1 == 1){
  paste("Side dish : ", sidedish2_sum)
} else {
  print("Side dish : None")
}
if(cus_drink1 == 1){
  paste("Drink : ", drink2_sum)
} else {
  print("Drink : None")
}
paste("How to take : ", dev_sum)
print("*************** Thank you ******************")
print("***Hope you enjoy with your Special Pizza***")
print("--------------------------------------------")
