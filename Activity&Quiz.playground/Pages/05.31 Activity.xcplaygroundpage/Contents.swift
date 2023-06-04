import Foundation

// 코드1
// 하나의 이름 문자열을 매개변수로 호출하면 환영인사를 출력하는 함수를 만드세요.
print("-----코드1-----")

func hello(name: String){
    print("hello \(name)")
}
hello(name: "김OO")

// 코드2
// 코드1의 결과를 기반으로 우리 조 구성원들의 이름(또는 닉네임)들의 문자열 배열을 매개변수로 호출하면 한명씩 환영인사를 출력하는 함수를 만드세요.
print("-----코드2-----")

let teamName=["김OO", "박OO", "이OO", "최OO"]
func hello1(teamName: Array<String>){
    for i in teamName{
        print("hello \(i)")
    }

}
hello1(teamName: teamName)
print()

// 코드3
// 코드2의 결과를 기반으로 정수를 매개변수로 더해서 호출하면 조 구성원의 배열 중에서 해당 숫자에 해당하는 순서의 구성원에게만 환영 인사를 출력하는 함수를 만드세요.
print("-----코드3-----")

let teamList=["김OO", "박OO", "이OO", "최OO"]
func hello3(teamName: Array<String>, number: Int){
    for i in teamName {
        if i == teamName[number] {
            print("hello \(teamName[number])")
        }
    }
}
hello3(teamName: teamList, number: 2)
print()

// 코드4
// 코드3의 결과를 기반으로, 함수 안에서는 출력 없이 환영 메시지 문자열을 반환하는 함수가 되도록 만들고, 외부에 서 함수를 호출해 문자열을 출력하도록 만드세요.
print("-----코드4-----")

func hello4(teamName: Array<String>, number: Int)-> String{
    for i in teamName{
        if i == teamName[number]{
            return teamName[number]
        }
    }
    return ""

}
let message = hello4(teamName: teamList, number: 3)
print(message)

print()

// 코드5
// 코드5 코드4의 결과를 기반으로, 해당 구성원의 이름과 몇번째 멤버에 해당하는지 숫자를 하나의 데이터로 모아 반환하는 함수가 되게 만들고, 외부의 함수 호출로 환영인사가 나오도록 만드세요.
print("-----코드5-----")

func hello5(teamName: Array<String>, number: Int)-> (name: String, number: Int){
    for i in 0...3{
        if i == number{
            return (teamName[i], i)
        }

    }
    return ("",0) //조건에 맞지 않을 경우 리턴 값이 없기 때문에 에러발생

}
let mytuple = hello5(teamName: teamList, number: 3)
print("hello \(mytuple.number)번째 \(mytuple.name)")
print()


// 코드6
// 코드2의 결과를 기반으로, 매개변수를 배열 대신, 가변개수 매개변수로 이름의 문자열들을 매개변수로 호출되도록 함수를 고쳐보세요.
print("-----코드6-----")
func hello6(teamName: String...){
    for i in teamName{
        print("hello \(i)")
    }

}
hello6(teamName:"김OO", "박OO", "이OO", "최OO")
print()
