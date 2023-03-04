import Foundation

/*
클래스 와 구조체
클래스 : 참조타입. 같은 클래스 인스턴스를 여러개의 변수에 할당한뒤 값을 변경시키면 모든 변수에 영향을 줌 (메모리가 복사됨) 상속이 가능하다.
구조체 : 값 타입. ~변경시키더라도 다른 변수에 영향을 주지 않음 (값 자체를 복사. 매번 새로운 메모리가 할당된다.)
*/

class SomeClass {
  var count: Int = 0
}

struct SomeStruct {
  var count: Int = 0
}

//클래스는 참조타입 이기에, 같은 클래스의 인스턴스를 할당한 변수값을 변경시키면 참조된 인스턴스의 값이 변경되기 때문이다.
//즉, 변수를 복사하더라도 하나의 인스턴스 주소값을 가리키고 있기 때문에 복사본과 원본이 같은 내용을 갖게 된다.
var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count //result : 2


//구조체는 값타입 이기에, 여러개의 변수에 할당한뒤 값을 변경시키더라도 값 자체가 복사되기 때문에 다른 변수에 영향을 주지 않는다.
var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count // result : 0
struct2.count // result : 3
struct3.count // result : 4
