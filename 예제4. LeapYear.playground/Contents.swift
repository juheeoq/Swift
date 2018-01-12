import UIKit
import Foundation

/*
 윤년 계산은 다음과 같이 한다.
 
 1. 년도중에 4로 나누어지는 년도는 윤년이다.
 2. 하지만 그중에 100으로 나누어지는 년도는 윤년이 아니다.
 3. 하지만 또 그중에 400으로 나누어지는 년도는 윤년으로 계산한다.
 
 예를들어 1997년은 윤년이 아니지만, 1996년은 윤년이고, 1900은 윤년이 아니지만, 2000년은 윤년이다.
 
 여러분에게 Year이라는 클래스는 이미 만들어져 있다. 이 클래스는 `calendarYear` 이라는 *변수* 에 년도를 넣고`isLeapYear` 이라는 `bool` 형 변수에 변수가 맞는지 아닌지를 찾아내야 한다. 중괄호 안에 `calendarYear`을 이용하여 해당 년도가 윤년인지 아닌지를 연산하고 참/거짓 중 하나의 값을 return 하라.
 
 from : http://exercism.io/exercises/swift/leap
 */

class Year {
    var calendarYear: Int
    init(calendarYear :Int) {
        self.calendarYear = calendarYear
    }
    var isLeapYear: Bool {
        if calendarYear%400 == 0 {
            print ("\(calendarYear)은 윤년")
            return true
        }
        else if calendarYear%100 == 0 {
            print ("\(calendarYear)은 윤년이 아니다")
            return false
        }
        else if calendarYear%4 == 0 {
            print ("\(calendarYear)은 윤년")
            return true
        }
       
        return false
    }
}


let year1996 = Year(calendarYear: 1996)
assert(year1996.isLeapYear == true, "1996년은 윤년")

let year1997 = Year(calendarYear: 1997)
assert(year1997.isLeapYear == false, "1997년은 윤년이 아니다")

let year1990 = Year(calendarYear: 1900)
assert(year1990.isLeapYear == false, "1900년은 윤년이 아니다")

let year2400 = Year(calendarYear: 2400)
assert(year2400.isLeapYear == true, "2400년은 윤년이다")

print("Well Done")
