import UIKit

/* 옵셔널 (Optional)

 nil : 값이 없음. 모든 타입에서 사용 가능
 Optional은 안전을 위한 장치로, 실행중 nil이 될 수 있는 변수에 '?'를 붙여 특별히 관리 */


// Implicitly Unwrapped Optional : 선언시 ! 사용 (구조적으로 초기화 이후 항상 값이 존재하는 경우를 위한 편의장치)
var title: String = "Storyboard Prototyping"
var ratings: [Int]? = nil
var supportURL: String! = nil
// 처음 만들 때는 어쩔 수 없이 nil이지만, 초기화 이후에는 무조건 값을 가질 것이라고 알고 있는 경우


supportURL = "www.codershigh.com"

var bookDescription:String = "\(title)"
if let theRatings = ratings {
    bookDescription += "has \(theRatings.count) ratings"
}
/* if let theURL = supportURL {
    bookDescription += "\r\nsupport web page : \(theURL)"
} */
bookDescription += "\r\nsupport web page : \(supportURL)"

print("\(bookDescription)")


