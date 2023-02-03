// 1 დავალება 

func minSplit(amount: Int) -> Int {
    let coins = [50, 20, 10, 5, 1]
    var amount = amount
    var result = 0
  
    coins.forEach { coin in 
    result += amount / coin
    amount = amount % coin                
  }
  return result 
}

var solution = minSplit(amount: 9)
print(solution)



// 2 დავალება 

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}

func sumOfDigits(start: Int, end: Int) -> Int{
     var arr = [Int]()
       for N in start...end {
         if N > 9 {
           var digits = N.digits
           var sumOfNumber = digits[0] + digits[1]
           arr.append(sumOfNumber)
           
         } else {
           arr.append(N)
         }
 
        
       }  
      var sum = 0
      for i in 0..<arr.count{
       sum += arr[i]
    }
      return sum        
   }

var result = sumOfDigits(start: 19, end: 22)
print(result)



// 3 დავალება 

func isProperly(sequence: String) -> Bool {
  var num = 0
  var num2 = 0
  
  var arrOfBrackets = [String]()
  
  arrOfBrackets.append(sequence)
  
  for bracket in arrOfBrackets{
   for b in bracket {
     if b == "(" {
       num += 1
     } 
     if b == ")" {
       num2 += 1 
     } 
   }
  }
    if num == num2 {
      return true
     } else {
      return false
     }
  
	}

var result = isProperly(sequence: "())))") // false
print(result) 



// 4 დავალება 



// 5 დავალება 


func zeros(N: Int) -> Int {
  var number = N
  var result = 0
    while number > 0 {
      number = number / 5
      result = result + number
    }
    return result
}

 var solution = zeros(N: 490)
print(solution)
