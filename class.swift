import UIKit

/*
class 클래스이름 {
  프로퍼티와 메서드
}
*/

class Dog {
  var name: String = ""
  var age: Int = 0

  // class에는 초기화 할때 기본적인 생성자를 사용한다.
  init() {
  }

  func introduce() {
    print("name \(name) age \(age)")
  }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3 
dog.name // result : CoCo
dog.age // result : 3

dog.introduce() //result : name CoCo age 3
