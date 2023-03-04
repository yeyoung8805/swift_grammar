import Foundation

//1. assert 함수
var value = 0
assert(value == 0) //결과가 참이므로 넘어가고

value = 2
assert(value == 0, "값이 0이 아닙니다.") //결과가 거짓이므로 런타임 에러를 발생시키며 "Assertion failed : 값이 0이 아닙니다." 출력한다.

//2. guard문
/*
guard 조건 else {
  //조건이 fasle 이면 else 구문이 실행되고,
  return or throw break 를 통해 이후 코드를 실행하지 않도록 만들어야 한다.
}
*/

// value==0 인 경우 안녕하세요 가 찍히고, else 인 경우 함수가 return에 의해 종료되게 된다.
func guardText(valueInt: Int) {
  guard valueInt == 0 else { return }
  print("안녕하세요.")
}

guardText(valueInt: 2) //result : (return 에 의해 함수가 종료되므로, 아무것도 출력하지 않는다.)
guardText(valueInt: 0) //result : 안녕하세요 (출력)


func guardText2(valueInt: Int?) {
  guard let valueInt = valueInt else { return }
  print(valueInt)
}

guardText2(valueInt: 2) //result : 2
guardText2(valueInt: nil) //result : (else return 에 의해 함수가 종료되므로, 아무것도 출력하지 않는다.)


