import Foundation

let lab19 = ["김OO", "박OO", "이OO", "최OO"]

print("-----코드1-----")
// 코드 1
// 우리 조원의 이름/닉네임을 배열로 만들어 한명씩 환영 메시지를 출력해봅시다
for member in lab19 {
    print(member + "님 반갑습니다~!")
}


print("-----코드2-----")
// 코드 2
// 코드1을 기반으로 조원들의 이름을 출력할 때의 순서에서 3번째 이전과 그 후의 환영 메시지가 다르게 만들어봅시다

var count: Int = 0
for member in lab19 {
    if count < 2 {
        print(member + "님 안녕하세요~!")
        count += 1
    } else {
        print(member + "님 반갑습니다~!")
        count += 1
    }
}

print("-----코드3-----")
// 코드 3
// 코드1을 기반으로 조원들의 이름을 출력할 때 각 이름마다 다른 환영 인사가 나오게 만들어봅시다
var index: Int = 0
for member in lab19 {
    switch index {
    case 0:
        print(member + "님 안녕하세요~!")
    case 1:
        print(member + "님 반갑습니다~!")
    case 2:
        print(member + "님 좋은 하루 보내세요~!")
    case 3:
        print(member + "님 환영합니다~!")
    default:
        break
    }
    index += 1
}

print("-----코드4-----")
// 코드 4
// 코드3를 기반으로 몇몇 사람들을 묶어 같은 환영 메시지가 나오게 만들어봅시다
var index4: Int = 0
for member in lab19 {
    switch index4 {
    case 0,3:
        print(member + "님 안녕하세요~!")
    case 1,2:
        print(member + "님 반갑습니다~!")
//    case 2:
//        print(member + "님 좋은 하루 보내세요~!")
//    case 3:
//        print(member + "님 환영합니다~!")
    default:
        break
    }
    index4 += 1
}

print("-----코드5-----")
// 코드 5
// 1부터 100까지 숫자를 늘려가며, 각 단계별로 쌓인 합을 출력해봅시다
var number: Int = 0
for index in 0..<100 {
    number += index
    if number > 100 {
        break
    }
    print(number)
}

print("-----코드6-----")
// 코드 6
// 코드5를 기반으로 각 단계별 숫자가 5 단위 일때만 출력해봅시다 (5, 10, 15 ...)

var number1: Int = 0
for index in 0..<100 {
    number1 += 1
    if index > 100 {
        break
    }
    if (number1 % 5 == 0) {
        print(number1)
    }
}

print("-----코드7-----")
// 코드 7
// 앞서 나온 마지막 온도 switch 구문 처리 코드에서 섭씨 온도를 가져와도 switch 구문 전체는 수정없이 작동되도록 만들어봅시다. 화씨로 출력되는 상태 그대로 유지 포함

let temperature = 83

switch (temperature) {
    case 0...49:
        print("Cold")
    case 50...79:
        print("Warm")
    case 80...110:
        print("Hot")
    default:
        break
}

print("-----코드8-----")
// 코드 8
// 구구단의 모든 내용을 출력해봅시다. 단, 2,4,6...와 같이 짝수 단일때만 출력하게 만듭시다
for i in 1...9 {
    if i % 2 == 0 {
        for j in 1...9 {
            print(i, "*", j, "= \(i*j)")
        }
    }
}

print("-----코드9-----")
// 코드 9
// 좀 더 적은 코드가 되는 노력과 함께 오른쪽과 같이 출력 되도록 만들어봅시다.
// 단, 오른쪽의 최대 5개까지 늘어난 최대치는 특정 상수에 의해 쉽게 바꿀 수 있도록 만들어봅시다.
// 아래로 가면서 늘어나고 줄어드는 횟수도 특정 상수에 의 해 쉽게 바꿀 수 있도록 만들어봅시다.

for _ in 0...1 {
    for i in 0...4 {
        for _ in 0...i {
            print("*", terminator: "")
        }
        print("")
    }

    for i in 0...4 {
        for _ in 0...4-i {
            print("*", terminator: "")
        }
        print("")
    }
}

print("-----코드10-----")
// 코드 10
// 자유롭게 특정 갯수의 0 이상의 정수들을 담은 배열을 만듭시다
// 배열 안의 숫자들을 활용해 각 내용들을 각 줄마다 이렇게 출력합시다
// 몇번째 항목인지
// 실제 담긴 숫자를 나타내는 막대그래프 (문자를 사용) 실제 담긴 숫자
// 1 ============ 12 2 ======== 8
// 3 ========== 10
// 4 ===== 5
// 5 ======= 7 6 ==== 4

let array = [12, 8, 10, 5, 7, 4]

var order: Int = 1
for number in array {
    print(order, terminator: "")
    for _ in 1...number {
        print("=", terminator: "")
    }
    print(number)
    order += 1
}
