import Foundation

print("----- a,b 값 바꾸기 -----")
var a: Int = 10
var b: Int = 12
var temp: Int = 0

temp = a
a = b
b = temp

print("a: \(a), b: \(b), temp: \(temp)")

func changeTwoInts(a: Int, b: Int) -> (Int, Int) {
    var numA = a
    var numB = b
    
    var temp = numA
    numA = numB
    numB = temp
    
    return (numA, numB)
}

print("\(changeTwoInts(a: 10, b: 22))")

print("")
// QuizSort 퀵 정렬
print("-----QuizSort 구현-----")

var numbers: [Int] = [45, 21, 32, 50, 9]

func quickSort(array: [Int]) -> [Int] {
    var sortedArray = array
    
    guard sortedArray.count > 1 else {
        return array
    }
    
    let pivot: Int = sortedArray.last ?? -1
    
    var leftArray: [Int] = []
    var rightArray: [Int] = []
    
    for index in 0..<(sortedArray.count - 1) {
        let item: Int = sortedArray[index]
        
        if item < pivot {
            leftArray.append(item)
        } else {
            rightArray.append(item)
        }
    }
    
//    print("----------------------------")
//    print("pivot: \(pivot)")
//    print("leftArray: \(leftArray)")
//    print("rightArray: \(rightArray)")
//    print("----------------------------")
    
    leftArray = quickSort(array: leftArray) // 재귀함수
    rightArray = quickSort(array: rightArray) // 재귀함수
        
    sortedArray = leftArray + [pivot] + rightArray
    
    return sortedArray
}

print("QuickSort: \(quickSort(array: numbers))")

print("")
// BubbleSort 버블 정렬
print("-----BubbleSort 구현-----")

func bubbleSort(array: [Int]) -> [Int] {
    var sortedArray = array
    
    guard sortedArray.count > 1 else {
        return array
    }
    
    for index in 0..<(sortedArray.count - 1) {
        let number1 = sortedArray[index]
        let number2 = sortedArray[index + 1]
        
        if number1 > number2 {
            let numberTemp = sortedArray[index]
            sortedArray[index] = sortedArray[index + 1]
            sortedArray[index + 1] = numberTemp
        }
    }
    
    let numberLast = sortedArray.last ?? -1
    
    var subArray: [Int] = []
    
    for index in 0..<sortedArray.count - 1 {
        subArray.append(sortedArray[index])
    }
    
    sortedArray = bubbleSort(array: subArray) + [numberLast]
    
    return sortedArray
}

print("BubbleSort: \(bubbleSort(array: numbers))")
