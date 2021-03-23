import UIKit

struct s_Sex: Hashable {
    let M = "Male"
    let F = "Famale"
}


struct s_Person: Hashable {
    var name: String
    var sex: String
}

var member:[s_Person:String] = [:]
var sex = s_Sex()
var person:s_Person
person = s_Person(name:"Eason",sex:sex.M)

member = [s_Person(name:"Eason",sex:sex.M):"VIP",s_Person(name:"Jan",sex:sex.F):"NORMAL",s_Person(name:"Yokari",sex:sex.F):"TRAINER",s_Person(name:"Eason",sex:sex.F):"TRAINER"]


print(member[s_Person(name:"Eason",sex:sex.M)]!)





