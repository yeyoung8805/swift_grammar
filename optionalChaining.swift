import Foundation

struct Developer {
  let name: String
}

struct Company {
  let name: String
  var developer: Developer?
}

var company = Company(name: "DevLab", developer: nil)
print(company.developer) // result : nil

var developer = Developer(name: "Kim")
var company = Company(name: "DevLab", developer: developer)
print(company.developer) // result : Optional(Developer(name: "Kim"))
// print(company.developer.name) // error : value of optional type 'Developer?' must be unwrapped to refer to member 'name'
print(company.developer?.name) // Optional("Kim")
print(company.developer!.name) // Kim


