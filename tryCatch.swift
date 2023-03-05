import Foundation

enum PhoneError: Error {
  case unknown
  case batteryLow(batteryLevel: Int)
}

// throw PhoneError.batteryLow(batteryLevel: 20) //error 가 발생하는 코드

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
  guard batteryLevel != -1 else { throw PhoneError.unknown }
  guard batteryLevel > 20 else {
    throw PhoneError.batteryLow(batteryLevel: 20)
  }
  return "배터리 상태가 정상입니다."
}


/*
do {
  try 오류 발생 가능 코드
} catch 오류패턴 {
  처리코드
}
*/
do {
  // try checkPhoneBatteryStatus(batteryLevel: -1) //result : 알 수 없는 에러입니다.
  try checkPhoneBatteryStatus(batteryLevel: 20) //result : 배터리 전원 부족 남은 배터리 : 20%
}catch PhoneError.unknown {
  print("알 수 없는 에러입니다.") 
}catch PhoneError.batteryLow(let batteryLevel) {
  print("배터리 전원 부족 남은 배터리 : \(batteryLevel)%")
}catch {
  print("그 외 오류 발생 : \(error)") 
}


let status = try? checkPhoneBatteryStatus(batteryLevel: -1)
print(status) //result : nil //(함수가 unknown에러를 던져주기 때문이다.)

let status2 = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status2) //result : Optional("배터리 상태가 정상입니다.") //함수가 에러를 던져주지 않기 때문에, Optional 값이 출력된다.


let status3 = try! checkPhoneBatteryStatus(batteryLevel: 30) //try!는 throw 함수나 메서드가 에러를 던져주지 않을거라고 확신할때 사용하는 방법
print(status3) //result : 배터리 상태가 정상입니다.

let status4 = try! checkPhoneBatteryStatus(batteryLevel: -1) //try!는 에러를 발생시키게 되면 프로그램이 강제종료된다.
print(status4) //Fatal error

