import Foundation

/*
protocol 이름 {

}
*/

protocol SomeProtocol {

}

protocol SomeProtocol2 {

}

// 구조체에 여러개의 protocol을 추가 할 수 있다.
struct SomeStructure: SomeProtocol, SomeProtocol2 {

}

//class에도 여러개의 protocol을 추가할 수 있는데, 맨앞에는 상속받은 클래스명, 그 이후 프로토콜들을 추가 할 수 있다.
/*
class SomeClass: SomeSuperClass, FirstProtocol, AnotherProtocol {

}
*/

protocol FirstProtocol {
  var name: Int {get set}
  var age: Int {get}
}

protocol AnotherProtocol {
  static var someTypeProperty: Int {get set}
}

protocol FullyNames {
  var fullName: String {get set}
  func printFullName()
}

struct Person: FullyNames {
  var fullName: String
  func printFullName() {
    print(fullName)
  }
}

protocol SomeProtocol3 {
  func someTypeMethod()
}

//프로토콜에 init 생성자도 만들수 있다. 이때 매개변수만 넣어주면 된다.
protocol SomeProtocol4 {
  init(someParameter: Int)
}

protocol SomeProtocol5 {
  init()
}

//구조체(struct)에서는 생성자 요구사항을 준수 할때, required 키워드가 필요 없으나,
//클래스(class)에서는, init 앞에 required 키워드가 필요하다. 단, 상속받을 수 없는 final 키워드가 붙은 init() 일 경우는 required도 붙일 필요 없다. 
class SomeClass : SomeProtocol5 {
  required init() {

  }
}

