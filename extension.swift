import Foundation

/*
extension SomeType {
  //추가기능
}
*/

// 타입의 프로퍼티를 extension을 통해 추가한다.
//Int 형 타입이 짝수인지 홀수인지 분별하는 기능을 extension을 통해 추가
extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }

  var isOdd: Bool {
    return self % 2 == 1
  }
}

var number = 3
number.isOdd //true
number.isEven //false

// extension을 통해 타입의 메서드를 추가할 것이다.
extension String {
  func convertToInt() -> Int? {
    return Int(self)
  }
}

var string = "0"
string.convertToInt() //result : 0 ("0"이라는 문자열이 0이라는 int 타입의 정수로 변환되었다.)

