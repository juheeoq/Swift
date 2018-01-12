import UIKit

/* 함수
 func functionName(parameter: Type) -> Return {
 }
 
 func doIt(what: String) {
    print("Just do\(what)")
 }
 doIt(what: "Say Hello")
 
 Swift3 이후부터 모든 파라미터마다 파라미터의 이름을 적어주어야 함 but 아래의 경우처럼 _ 사용시 생략 가능
 
 func doIt(_what: String) {
 print("Just do\(what)")
 }
 doIt("Say Hello")
 
 */

// 'option + 클릭'하면 자세히 볼 수 있음 혹은 developer.apple.com 사이트에서 검색(API)

// Assertion : 검증하기 (검증실패 시 메세지 출력과 함께 실행 종료)

import Foundation
// 기본 타입에 대해 조금 더 확장된 개념으로 추가해주면 좋음

/* let str: String = "abc"

str.trimmingCharacters(in: CharacterSet.whitespaces)
print(trimmed.count)

var intVal: Int = 10
var intVal2: Int = 11

class Myclass {
    var intProperty: Int = 10
    var floatProperty: Float = 10.1
    
    static var
} */

// static 객체를 만들지 않고 사용하는 것

/* 구조체
    프로퍼티: 옵셔널로 할 것인가? 초기값 대입할 것인가?
    옵셔널 프로퍼티는 nil로 초기화, 그렇지 않은 프로퍼티는 초기화 필요
    구조체 객체 생성(자동 프로퍼티 초기화)
    구조체 내 함수 작성 가능 */


// 괄호 안에 정의된 변수는 벗어나서 작동 불가
// class와 구조체 차이

/* var myValue: Int
let result = myValue + 1
    이 때 myValue 값 설정 안 되어 있어서 error */

class MyClass {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}

// 가장 쉬운 방법은 값을 주는 것 혹은 optional, initialize (처음의 값을 설정)


struct Idol {
    var age: Int{
        return 2018 - birthYear
    } // computed property
    var birthYear: Int // stored property
}

let IU = Idol(birthYear: 1994)





