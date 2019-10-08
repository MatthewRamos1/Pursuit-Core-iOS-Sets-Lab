import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]
var setWithNoDuplicates: Set<Int> = Set(numbers)
var numbersWithNoDuplicates = [Int](setWithNoDuplicates).sorted()
print(numbersWithNoDuplicates.sorted())



assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

var scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var scoreDict: [Int:Int] = [:]
var scoresThatAppearOnce = [Int]()
for score in scores{
    scoreDict[score] = 0
}
for score in scores{
    scoreDict[score] = (scoreDict[score] ?? -1) + 1
    if (scoreDict[score] ?? -1) > 1{
        scores.remove(at: scoreDict[score] ?? -1)
      
    }
}
print(scoreDict)
for (number, score) in scoreDict{
    if (scoreDict[score] ?? -1) == 1 {
        scoresThatAppearOnce.append(number)
    }
}
print(scoresThatAppearOnce)


//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]
var arr1Set : Set<Int> = Set(arrOne)
var arr3Set = arr1Set.union(arrTwo)
let arrThree = [Int](arr3Set).sorted()


assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]
var arr4Set : Set<Int> = Set(arrFour)
var arr6Set = arr4Set.intersection(arrFive)
let arrSix = [Int](arr6Set).sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]
var num1Set : Set<Int> = Set(numsOne)
var allNumSet = num1Set.union(numsTwo)
allNumSet = allNumSet.union(numsThree)
allNumSet = allNumSet.union(numsFour)
var allNumsWithNoDuplicates = [Int](allNumSet).sorted()


assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"
var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false
var counter = 0
var setOne : Set<Character> = Set(strOne)
var setTwo : Set<Character> = Set(strTwo)
var setThree: Set<Character> = Set(strThree)
var alphabet: Set<Character> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
for char in alphabet {
    if setOne.contains(char){
        counter += 1
        
    }
    if counter == 26 {
        strOneIsPangram = true
        counter = 0
    }
}
for char in alphabet {
    if setTwo.contains(char){
        counter += 1
        
    }
    if counter == 26 {
        strTwoIsPangram = true
        counter = 0
    }
}
for char in alphabet {
    if setThree.contains(char){
        counter += 1
        
    }
    if counter == 26 {
        strThreeIsPangram = true
        counter = 0
    }
}



assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









