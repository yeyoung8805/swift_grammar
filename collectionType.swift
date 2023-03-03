import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]
numbers[2]


numbers.insert(4, at:2) 
//[1,2,4,3]
numbers


numers.remove(at:0)
//[2,4,3]
numbers

// var names = [String]() 
//아래와 동일
var names = [String] = []

// var dic: Dictionary<String, Int> = Dictionary<String, Int>()
//아래와 같이 값을 넣어 선언해도 된다.
var dic: [String: Int] = ["홍길동": 1]
dic["김하니"] = 3
dic["김민지"] = 5
//["김민지":5, "홍길동":1, "김하니":3]
dic

dic["김민지"] = 6
//["김민지":6, "홍길동":1, "김하니":3]
dic

dic.removeValue(forKey: "김민지")
//["홍길동":1, "김하니":3]
dic

//Set : 순서대로 저장되지 않고, 중복도 허용하지 않는다.
var set: Set = Set<Int>()
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30) // 중복되는 값 삽입
set.insert(30) // 중복되는 값 삽입
//{30, 20, 10}
set

set.remove(20)
//{30, 10}
set