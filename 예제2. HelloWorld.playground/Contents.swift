import UIKit

// 2. HelloWorld

/*
 
 # Hello World
 
 *"Hello, World!"* 프로그램을 만들어 보자.
 
 "Hello, World!" 를 출력하되, 어떤 이름이 주어지면 그 이름에 대해 인사를 하는 함수를 작성하라.
 
 예를 들어 "Bob" 이라는 이름이 주어지면 "Hello, Bob!" 을 출력한다.
 
 
 ## Structure
 
 hello라는 함수를 다음과 같이 선언한다.
 
 func hello(_ name: String) -> String
 
 함수 파라미터로 이름(name)을 전달받으면 "Hello, <name>!" 의 문자열을 반환한다.
 
 class func hello() -> String
 
 */

func hello(_ name: String) -> String {
    // 모든 테스트가 통과하도록 코드 작성
    let result = "Hello, " + name + "!"
    return result
}

func hello() -> String {
    // 모든 테스트가 통과하도록 코드 작성
    let result = "Hello, World!"
    return result
}


let result1 = hello()
assert(result1 == "Hello, World!", "When given no name, we should greet the world!")

let result2 = hello("Alice")
assert(result2 == "Hello, Alice!", "When given 'Alice' we should greet Alice!")

let result3 = hello("Bob")
assert(result3 == "Hello, Bob!", "When given 'Bob' we should greet Bob!")

let result4 = hello("")
assert(result4 == "Hello, !", "When given an empty string, it is strange, but should have a space and punctuation")

print("Well Done")

