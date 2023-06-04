import Foundation

// 퀴즈1
print("-----퀴즈1-----")

// ChatGPT에게 10개의 한국이름을 추천받았습니다.
let nameList = ["현우", "지혜", "준호", "지우", "선영", "민준", "지은", "도윤", "예린", "서연"]

var order = 1

for name in nameList {
    switch order {
    case 1:
        print("Hello \(name), you are \(order)st")
    case 2:
        print("Hi \(name), you are \(order)nd")
    case 3:
        print("Hello \(name), you are \(order)rd")
    case 4,6,8,10:
        print("Hi \(name), you are \(order)th")
    case 5,7,9:
        print("Hello \(name), you are \(order)th")
    default:
        print("The End")
    }
    order += 1
}

// 퀴즈2
print("-----퀴즈2-----")

protocol Person {
    var name: String { get set }
    func displayname() -> String
}

class Player: Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func displayname() -> String {
        return name + " 선수"
    }
}

struct Friend: Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func displayname() -> String {
        return name + " 선수"
    }
}


let playerOne: Player = Player(name: "호날두")
let playerTwo: Player = playerOne

playerOne.name = "메시"

print("P1: \(playerOne.displayname())") // P1: 메시 선수
print("P2: \(playerTwo.displayname())") // P2: 메시 선수


var friendOne: Friend = Friend(name: "둘리")
var friendTwo: Friend = friendOne

friendOne.name = "도우너"

print("F1: \(friendOne.displayname())") // F1: 도우너 선수
print("F2: \(friendTwo.displayname())") // F2: 둘리 선수

