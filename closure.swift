import Foundation

/*
//named Closure
func hello() {
  print("안녕하세요")
}

//unnamed Closure
let hello2 = {print("안녕하세요")}
*/

/*
//Closure 표현식
{ (매개변수) -> 리턴타입 in 
  실행구문
}
*/

//parameter와 , return 값이 둘다 없는 클로저 표현식
let hello = { () -> () in
  print("Hello")
}

hello() //result : hello


let hello2 = { (name: String) -> String in
  return "Hello, \(name)"
}

// hello2(name: "Young") //error : 전달인자 name을 같이 입력하면 에러가 난다..
hello2("Young") //result : Hello, Young


//함수 파라미터로 closure 사용할 수 있다.
func doSomething (closure: () -> ()) {
  closure()
}
doSomething (closure: { () -> () in
  print("hello") //result : hello
})
//좀 더 간단히 나타낼 수 있다.
doSomething() {
  print("hello2")
}
//단하나의 closure만 매개변수로 전달하는 경우 ()도 생략가능하다.
doSomething {
  print("hello3")
}


//함수의 반환타입으로 closure 사용할 수 있다.
func doSomething2() -> () -> () {
  return { () -> () in
    print("hello4")
  }
}
doSomething2()() // result : hello4


//매개변수의 클로저가 복수개인 경우, 다중 후행 클로저(??)를 사용할 수 있다.
func doSomething2(success: () -> (), fail: () -> ()) {

}

doSomething2 {
  //code
} fail : {
  //code
}


//closure 표현법을 간소화 하는 방법
func doSomething3(closure: (Int, Int, Int) -> Int) {
  closure(1,2,3)
}

//(원본) 간소화하지 않고 closure를 풀로 작성했을 경우
doSomething3(closure: { (a, b, c) in
  return a + b + c
})

//(변형) 1. 파라미터의 데이터 타입을 생략가능
//매개변수 이름을 약식인수로 대체가능
doSomething3(closure: {
  return $0 + $1 + $2
})

//2. 타입유추를 통해 리턴타입도 생략가능
//단, 단일 리턴구문 이어야 한다.
doSomething3(closure: {
  $0 + $1 + $2
})
//단일 리턴구문이 아닐 경우, return 을 반드시 적어줘야 한다.
doSomething3(closure: {
  print("hello") //추가됨
  return $0 + $1 + $2
})

doSomething3() {
  $0 + $1 + $2
}

//4. 단하나의 closure만 매개변수로 전달하는 경우 소괄호()도 생략가능
doSomething3 {
  $0 + $1 + $2
}


