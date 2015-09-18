//: # 字符串和字符
import Foundation

// 字符串的索引不是单纯的整型值，而是Index类型的，所以使用整形作为下标索引的参数是会报错的……
var message = "Hello World!"
message.removeAtIndex(message.endIndex.predecessor())

// Swift中对字符串的操作还是尽量转化为NSString比较好……
var a: NSString = NSString(string: "Hello World!")
// 比如下面这个
a.substringWithRange(a.rangeOfString("llo"))