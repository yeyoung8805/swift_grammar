import UIKit

//명시적 해제 , 묵시적 해제 가 있다.
//1.명시적해제 부터 본다.
//?(optional)인 변수에 ! 를 붙여서 옵셔널을 강제해제 시키는 것이다.
//(위험한 방법이다..) 값이 nil 인 ?(optional)을 !(강제해제)하게 되면, 에러가 발생하여 프로그램이 강제종료 될수 있다.
var number: Int? = 3
print(number) //result : Optional(3)
print(number!) //result : 3


//안전하게 optional을 제거하려면 => 비강제해제 옵셔널 바인딩을 사용하면 된다.
if let resultNum = number {
  print(resultNum) // result : 3
}else {

}


//guard문을 통해 옵셔널 바인딩도 가능하다.
func test() {
  let number: Int? = 5
  guard let resultNum = number else { return }
  print(resultNum)
}
test() // result : 5


//2.묵시적 해제를 통해 옵셔널을 제거한다.
//비교연산자를 이용해 다른값과 비교하면 컴파일러가 자동으로 옵셔널을 제거해준다.
let value: Int? = 6
if value == 6 {
  print("value가 6입니다.")
} else {
  print("value가 6이 아닙니다.")
}
//result : "value가 6입니다."


//묵시적 옵셔널 해제
let string = "12"
var stringToInt: Int? = Int(string) //옵셔널인 상태
// print(stringToInt + 1)

var stringToInt: Int! = Int(string) //!(강제해제)를 통해 옵셔널 해제
print(stringToInt + 1)
