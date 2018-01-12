import UIKit

// Function

var title: String = "Storyboard Prototyping"
var ratings: [Double]? = nil
var supportURL: String! = nil

supportURL = "www.codershigh.com"
ratings = [4.5, 3.0, 5.0, 2.5]

func ratingRecord (_ history:[Double]) -> (average:Double, min:Double, max:Double) {
    // return 값은 튜플 형식
    var sum = 0.0, min = history[0], max = history [0]
    // history[0] 은 history의 0번째 값을 의미
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

var bookDescription:String = "\(title)"
if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bookDescription += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)."
}

bookDescription += "\r\nsupport web page : \(supportURL)"

print("\(bookDescription)")

