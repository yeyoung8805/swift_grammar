import UIKit

/*
func 함수명(파라미터 이름: 데이터 타입) -> 반환타입 {
  return 반환값
}
*/

func sum(a: Int, b: Int) -> Int {
  return a+b
}
sum(a: 5, b: 3) //8

//파라미터가 없는 경우
func hello() -> String {
  return "hello"
}
hello() //"hello"

//반환값이 없는 경우
// func printName() -> Void { 
// 와 아래는 동일
func printName() {

}

func greeting(friend: String, me:String = "gunter") {
  print("Hello, \(friend)! I'm \(me)")
}
greeting(friend: "Albert")// "Hello, Albert! I'm gunter"


/*
func 함수이름(전달인자 레이블: 매개변수 이름: 매개변수 타입, 전달인자 레이블: 매개변수 이름: 매개변수 타입...) -> 반환타입 {
  return 반환값
}
*/

func sendMessage(from myName: String, to name:String) -> String {
  return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "Young", to: "Jason") //"Hello Jason! I'm Young"

//전달인자 레이블이 따로 없는 경우 => 호출할때도 레이블 없이 값만 넘겨준다.
func sendMessage(_ name:String) -> String {
  return "Hello \(name)"
}
sendMessage("Yuna") //"Hello Yuna"

//가변 매개 변수 : 함수마다 가변매개변수는 하나 가질 수 있다.
func sendMessage(me: String, friends: String...) -> String {
  return "Hello \(friends)! I'm \(me)"
}
sendMessage(me: "Young", friends: "Jason", "Albert", "Stella") //"Hello["Jason", "Albert", "Stella"]! I'm Young"


