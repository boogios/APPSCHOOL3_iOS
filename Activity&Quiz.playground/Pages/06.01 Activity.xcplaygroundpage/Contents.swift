import Foundation

// 코드1
print("-----코드1-----")
class MyComputer {
    var kind: String
    var dateOfPurchase: String = "2022-11-10"
    var price: Int = 200
    
    init(kind: String) {
        self.kind = kind
    }
    
    func displayComputer() -> String {
        return "종류 - \(kind), 구매일 - \(dateOfPurchase), 가격 - \(price)"
    }
}

var myMac: MyComputer = MyComputer(kind: "MacBook")
myMac.dateOfPurchase = "2022-04-01"
myMac.price = 100
print("information: \(myMac.displayComputer())")

// 코드2
print("-----코드2-----")

protocol Device {
    var name: String { get }
    var color: String { get set }
    func buildMemoText() -> String // 기기의 이름과 색상 정보가 담긴 메모 문자열 만들기
}

class MyComputer1: Device {
    var newName: String = ""
    var newColor: String = ""
    
    var name: String {
        get {
            return "맥북입니당!"
        }
        set {
            newName = newValue
        }
    }
    var color: String {
        get {
            return "이건 스페이스그레이입니당!"
        }
        set {
            newColor = newValue
        }
    }
    
    func buildMemoText() -> String {
        return "이름 - \(name), 색상 - \(color)"
    }
    
    var kind: String
    var dateOfPurchase: String = "2022-11-10"
    var price: Int = 200
    
    init(kind: String) {
        self.kind = kind
    }
    
    func displayComputer() -> String {
        return "종류 - \(kind), 구매일 - \(dateOfPurchase), 가격 - \(price)"
    }
}

var myMac1: MyComputer1 = MyComputer1(kind: "MacBook")

print("Memo: \(myMac1.buildMemoText())")
