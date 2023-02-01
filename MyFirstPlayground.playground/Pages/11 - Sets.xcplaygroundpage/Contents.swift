var noRepeatNumbers: Set<Int> = Set<Int>()

noRepeatNumbers = [1,2,3,4,5,6,7,8,9]
noRepeatNumbers.insert(10)
noRepeatNumbers.insert(11)
noRepeatNumbers.insert(11)
print(noRepeatNumbers)