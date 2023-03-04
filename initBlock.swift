import Foundation

/*
init(매개변수: 타입, ...) {
  //프로퍼티 초기화
  //인스턴스 생성시 필요한 설정을 해주는 코드 작성
}
*/

class User {
  var nickname: String
  var age: Int

  init(nickname: String, age: Int) {
    self.nickname = nickname
    self.age = age
  }

  init(age: Int) {
    self.nickname = "Hani"
    self.age = age
  }

  deinit {
    print("deinit user")
    
  }
}

var user = User(nickname: "Young", age: 23)
user.nickname //result : Young
user.age //result : 23

var user2 = User(age: 27)
user2.nickname //result : Hani
user2.age //result : 27

var user3: User? = User(age: 23)
user3 = nil //result : deinit user //변수에 nil 을 대입하면 초기화하지 않겠다는 의미로 deinit 구문이 호출된다.

