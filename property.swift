import Foundation

//프로퍼티 종류 : 저장/ 연산/ 타입 프로퍼티
// 1.저장 프로퍼티
struct Dog {
  var name: String
  let gender: String
}

//구조체(struct)를 인스턴스화 한다.
var dog = Dog(name: "Young", gender: "Female")
print(dog) // result : Dog(name: "Young", gender: "Female")
//이렇게 인스턴스에 값이 저장된걸, 저장프로퍼티 라고 한다.

//저장 프로퍼티의 값 변경하기
dog.name = "Choco"
// dog.gender = "Male" //상수 let으로 저장된 프로퍼티의 값을 변경할 수 없다.


let dog2 = Dog(name: "Berry", gender: "Male")
// dog2.name = "BoBo" //name은 변수(var)로 선언됐어도 인스턴스 dog2가 상수(let)에 대입되었기 때문에 변경할 수 없다.


//클래스(class)는 참조타입이라서 구조체(struct)와 다른 결과가 나온다. (구조체는 value 타입)
class Cat {
  var name: String
  let gender: String

  init(name: String, gender: String) {
    self.name = name
    self.gender = gender
  }
}

let cat = Cat(name: "Cathy", gender: "female")
cat.name = "Kosy"
print(cat.name) //result : Kosy //클래스는 구조체와 달리, 변수(var)로 선언된 인스턴스 cat을 상수(let)에 대입하여도 참조타입이므로 값을 변경할 수 있다.



// 2.연산(계산) 프로퍼티
struct Stock {
  var averagePrice: Int
  var quantity: Int
  var purchasePrice: Int {
    get {
      return averagePrice * quantity
    }
    // (참고) set의 매개변수를 새로 지정하지 않으면 디폴트 값이 newValue를 사용가능하다.
    // set {
    //   averagePrice = newValue / quantity
    // }
    set(newPrice) {
      averagePrice = newPrice / quantity
    }
  }
}
var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock) // result : Stock(averagePrice: 2300, quantity: 3)
stock.purchasePrice //result : 6900

stock.purchasePrice = 3000
stock.averagePrice //result : 1000 //purchasePrice 가 변경되면 set() 안의 newPrice값이 변경되면서 반영되기 때문이다.



//프로퍼티 옵서버 : 프로퍼티 값의 변화를 감지하고 반영한다.
//저장 프로퍼티나, 오버라이딩된 저장/연산 프로퍼티에서만 사용가능 하다.
class Account {
  var credit: Int = 0 {
    //소괄호 이름 지정
    //willSet 옵서버 : 값이 변경되기 직전
    willSet {
      print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
    }

    //didSet 옵서버 : 값이 변경된 직후
    didSet {
      print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
    }
  }
}

var account = Account()
account.credit = 1000 //result : 잔액이 0원에서 1000원으로 변경될 예정입니다.
                      // 잔액이 0원에서 1000원으로 변경되었습니다.



// 3.타입 프로퍼티 : 인스턴스 생성없이 객체내의 프로퍼티에 접근 가능하게 한다. 프로퍼티 타입과 연결하게 하는 것이다.
//타입프로퍼티는 저장/연산 프로퍼티에서만 사용 가능하다.
//static 키워드를 사용하여 정의한다.

struct SomeStructure {
  static var storedTypeProperty = "Some value." //스토어
  static var computedTypeProperty: Int { //컴퓨티드
    return 1
  }
}

SomeStructure.storedTypeProperty // result : 1
SomeStructure.computedTypeProperty // result : Some value.
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty // result : hello

