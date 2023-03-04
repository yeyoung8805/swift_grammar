import Foundation


/*
enum CompassPoint {
  case north, south, east, west
}
*/

enum CompassPoint: String {
  case north = "북"
  case south = "남"
  case east = "동"
  case west = "서"
}

var direction = CompassPoint.east
direction = .west

switch direction {
  case .north:
    print("north")

  case .south:
    print("south")

  case .east:
    print("east")

  case .west:
    print("west") // result : west
}

//원시값으로 호출할 수 있다.
switch direction {
  case .north:
    print(direction.rawValue)

  case .south:
    print(direction.rawValue)

  case .east:
    print(direction.rawValue)

  case .west:
    print(direction.rawValue) //result : 서
}

//원시값을 통해 열거형을 만들 수 있다.
let direction2 = CompassPoint(rawValue: "남") 
direction2 //result : south



enum PhoneError {
  case unknown
  case betteryLow(String)
}

let error = PhoneError.betteryLow("배터리가 곧 방전됩니다.")

switch error {
  case .betteryLow(let message):
    print(message) //result : 배터리가 곧 방전됩니다.

  case .unknown:
    print("알 수 없는 에러입니다.")  
}

