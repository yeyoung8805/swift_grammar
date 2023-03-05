import Foundation

//고차 함수 (종류) :
//map, filter, reduce

//1.map
//컨테이너 내부에 기존 데이터를 변경하여 새로운 컨테이너를 생성한다.
let numbers = [0, 1, 2, 3]
let mapArray = numbers.map { (number) -> Int in
  return number * 2
}
print("map \(mapArray)") //result : map [0, 2, 4, 6]


//2. filter
//filter 고차함수를 사용하면, 컨테이너 내부의 값을 걸러서 새로운 컨테이너를 추출한다.
let intArray = [10, 5, 20, 13, 4]
let filterArray = intArray.filter { $0 > 5 }
print("filter \(filterArray)") //result : filter [10 ,20 ,13]


//3. reduce
//컨테이너 내부의 요소를 하나로 통합시켜준다.
let someArray = [1, 2, 3, 4, 5]
let reduceResult = someArray.reduce(0) {
  (result: Int, element: Int) -> Int in
  print("\(result) + \(element)")
  return result + element
}
print("reduce \(reduceResult)") 
//0 + 1
//1 + 2
//3 + 3
//6 + 4
//10 + 5
//result : reduce 15

// reduce(0) 에서 reduce(2) 로 변경할 경우
let someArray2 = [1, 2, 3, 4, 5]
let reduceResult2 = someArray2.reduce(2) {
  (result2: Int, element2: Int) -> Int in
  print("\(result2) + \(element2)")
  return result2 + element2
}
print("reduce \(reduceResult2)") 
//2 + 1
//3 + 2
//5 + 3
//8 + 4
//12 + 5
//result : reduce 17
