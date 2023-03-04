import UIKit

/*
struct 구조체 이름 {
  프로퍼티와 메서드
}
*/

struct User {
  var nickname: String 
  var age: Int

  func information() {
    print("\(nickname) \(age)")
  }
}

var user = User(nickname: "Young", age: 25)

user.nickname //result : Young
user.nickname = "Alice"
user.nickname //result : Alice

user.information() //result : Alice 25

