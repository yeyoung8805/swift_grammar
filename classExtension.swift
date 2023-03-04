import Foundation

class Vehicle {
  var currentSpeed = 0.0
  var description : String {
    return "traveling at \(currentSpeed) miles per hour"
  }
  func makeNoise() {
    print("speaker on")
  }
}


/*
class 클래스이름 : 부모클래스이름 {
  //하위 클래스 정의
}
*/

class Bicycle: Vehicle {
  var hasBasket = false
}

var bicycle = Bicycle() 
//bicycle 은 부모클래스의 프로퍼티도 상속받으므로 접근/변경이 가능하다.
bicycle.currentSpeed // result : 0
bicycle.currentSpeed = 15.0
bicycle.currentSpeed // result : 15

//오버라이딩
//메서드 오버라이딩
class Train: Vehicle {
  override func makeNoise() {
    super.makeNoise()
    print("choo choo")
  }
}

let train = Train()
train.makeNoise() // result : speaker on \n choo choo

//프로퍼티 오버라이딩
class Car: Vehicle {
  var gear = 1
  override var description: String {
    return super.description + " in gear \(gear)"
  }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description) //result : traveling at 30.0 miles per hour in gear 2

// 저장/연산 프로퍼티를 오버라이드한 프로퍼티는 getter/setter를 가질 수 있으며,
// 자식클래스에서 재정의하려는 프로퍼티는 슈퍼클래스의 프로퍼티 이름과 일치하여야 한다.
// 슈퍼클래스에서 read/write로 정의된 프로퍼티를 서브 클래스에서 read-only로 오버라이드 할 수 없지만
// 슈퍼클래스에서 read-only로 정의된 프로퍼티를 서브 클래스에서 read/write로 오버라이드 할 수 있다.

// 상속된 프로퍼티의 override를 사용해서 프로퍼티 옵서버도 추가 할 수 있다.
class AutomaticCar: car {
  override var currentSpeed: Double {
    didSet {
      gear = Int(currentSpeed / 10) + 1
    }
  }

}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)") //result : AutomaticCar: traveling at 35.0 miles per hour in gear 4


//final을 class 앞에 붙이면 해당 클래스를 슈퍼클래스로 하는 서브클래스를 만들수 없고,
//final을 슈퍼클래스의 proterty 앞에 붙이면(final var currentSpeed = 0.0) 서브클래스에서 오버라이드(재정의. override 키워드를 사용)를 할 수 없다.
