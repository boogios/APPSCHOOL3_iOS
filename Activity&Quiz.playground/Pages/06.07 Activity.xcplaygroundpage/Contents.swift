import Foundation

// 코드1
// 우리 실습조의 구성원들 이름을 담은 배열을 만들고, 배열을 이용해서 모든 이름을 출력해봅시다
print("-----코드1-----")

var OurTeamArray: [String] = ["임ㅇㅇ", "김ㅇㅇ", "이ㅇㅇ", "박ㅇㅇ", "최ㅇㅇ", "변ㅇㅇ"]
print(OurTeamArray)

// 코드2
// 코드1의 배열을 확장해봅시다. 우리 바로 다음조(12조는 1조) 구성원들 이름들을 확인해서 그 내용을 담은 배열을 만들고, 두 조의 이름이 모두 담긴 배열을 만들어 출력되도록 해봅시다.
print("-----코드2-----")

var AnotherTeamArray: [String] = ["한ㅇㅇ", "하ㅇㅇ", "김ㅇㅇ", "문ㅇㅇ", "박ㅇㅇ", "이ㅇㅇ"]

var newTeamArray = OurTeamArray + AnotherTeamArray
print(newTeamArray)

// 코드3
// 우리 실습조의 구성원들 이름과 선호하는 음악 아티스트(가수) 이름을 조합한 딕셔너리를 만들고 모든 내용을 출력해봅시다
print("-----코드3-----")
// "임ㅇㅇ", "김ㅇㅇ", "이ㅇㅇ", "박ㅇㅇ", "최ㅇㅇ", "변ㅇㅇ"
var OurTeamDict: [[String: String]] = [
    [
        "name" : "임ㅇㅇ",
        "artist" : "에스파"
    ],
    [
        "name" : "김ㅇㅇ",
        "artist" : "르세라핌"
    ],
    [
        "name" : "이ㅇㅇ",
        "artist" : "뉴진스"
    ],
    [
        "name" : "박ㅇㅇ",
        "artist" : "권진아"
    ],
    [
        "name" : "최ㅇㅇ",
        "artist" : "스테이씨"
    ],
    [
        "name" : "변ㅇㅇ",
        "artist" : "아이들"
    ],
]


struct TeamArtist {
    var name: String
    var artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
}

var OurTeamArtist2: [TeamArtist] = [
    TeamArtist(name: "임ㅇㅇ", artist: "에스파"),
    TeamArtist(name: "김ㅇㅇ", artist: "르세라핌"),
    TeamArtist(name: "이ㅇㅇ", artist: "뉴진스"),
    TeamArtist(name: "박ㅇㅇ", artist: "권진아"),
    TeamArtist(name: "최ㅇㅇ", artist: "스테이씨"),
    TeamArtist(name: "변ㅇㅇ", artist: "아이들"),
]

for ourTeamArtist in OurTeamArtist2 {
    print("name: \(ourTeamArtist.name), artist: \(ourTeamArtist.artist)")
}

// 코드4
// 코드2와 마찬가지로 다음 조 구성원들의 선호 아티스트를 담은 딕셔너리를 확인해서 두 조의 모든 내용이 담긴 새로운 딕셔너리를 만들어봅시다.
print("-----코드4-----")

struct AnotherTeamArtist {
    var name: String
    var artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
}

var AnotherTeamArtist2: [TeamArtist] = [
    TeamArtist(name: "한ㅇㅇ", artist: "Charlie Puth"),
    TeamArtist(name: "하ㅇㅇ", artist: "Harry Styles"),
    TeamArtist(name: "김ㅇㅇ", artist: "르세라핌"),
    TeamArtist(name: "문ㅇㅇ", artist: "블랙핑크"),
    TeamArtist(name: "박ㅇㅇ", artist: "위켄드")
]

var sumTeamDict: [TeamArtist] = OurTeamArtist2 + AnotherTeamArtist2

// 코드5
// 코드4의 딕셔너리에서 아티스트 이름들은 그대로 담고있지만, 구성원 이름들 대신 일련의 숫자들(1,2..)이 키(key)가 되는 새로운 딕셔너리를 구성해봅시다.
var artist : [String] = []

for index in sumTeamDict {
    artist.append(index.artist)
}

print(artist)

var resultDict = Dictionary(uniqueKeysWithValues: zip(1..., artist))

for (index, value) in resultDict {
    print("index: \(index), value: \(value)")
}

var sortedDict = resultDict.sorted { $0.0 < $1.0 }

for (index, value) in sortedDict {
    print("index: \(index), value: \(value)")
}
