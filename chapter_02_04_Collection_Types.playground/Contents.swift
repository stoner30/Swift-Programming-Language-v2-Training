//: # 集合类型

import Foundation

var objs: [AnyObject] = [1, "String"]
objs.append(true)
objs.append(37.5)

if let flag = objs[2] as? Bool {
    if flag {
        print("It's true")
    }
}

// 创建带缺省值的数组
var scores = [Float](count: 3, repeatedValue: 50.0)

// 需要同时遍历索引和值时，可使用下面这个函数
for (index, value) in scores.enumerate() {
    print("[\(index)]: \(value)")
}

// Set类型的遍历，其实重点是排序的问题，因为Set是无序的
let dictIndex: Set<String> = [ "A", "B", "C" ]
for index in dictIndex.sort() {
    print(index)
}

// 书上的韦恩图就不粘了，太麻烦
// 突然想到手机银行资源发布助手的改进方式，可通过Set来比较两个文件夹中内容的差异
var source: Set<String> = [
    "/static/index.html",
    "/static/javascript",
    "/static/css"
]

let template: Set<String> = [
    "/static/javascript",
    "/static/css",
    "/static/image"
]

// source.intersect(template): 表示source和template都含有的部分
// source.exclusiveOr(template): 表示source所独有的部分和template所独有的部分的合集
// source.union(template): 表示source和template的合集
// source.subtract(template): 表示source所独有的部分
// template.subtract(source): 表示template所独有的部分
// 重点就是上面这个subtract
// 使用template.subtract(source)可以比较出模板集合中独有的文件，这样在生成报告时可以知道source集合是否缺少必要的文件
// 使用source.subtract(target)可以比较出源集合中独有的文件，也许在新开发过程中加入了新的文件，但是未及时更新模板集合，导致新的页面未包含在生成包中
source.intersect(template)
source.exclusiveOr(template)
source.union(template)
source.subtract(template)
template.subtract(source)

// Dictionary遍历
let person = [
    "name": "Stoner",
    "age": "20"
]

for (key, value) in person {
    print("key: \(key), value: \(value)")
}

// 要求key为有序的话就加个排序
// 这里使用闭包写了个降序排列
let defaultValue = "none"
for key in person.keys.sort({ return $0 > $1 }) {
    print("key: \(key), value: \(person[key] ?? defaultValue)")
}
