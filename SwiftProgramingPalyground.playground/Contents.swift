import Cocoa

var greeting = "Hello, playground"
greeting = "Hello, Summer"
print(greeting)

let intValue = 5
let doubleVal : Double = 5.0
let str : String = "Hello I am String"
let booValue : Bool = true

var x,y,z : Int?
var optionalInt : Int?

let 🍎 = "apple"
print(🍎)

let name = "Summer"

print("Hello " + name)
print("Hello \(name)")

// comment
/*
 */
print("Summer"); print("Summer Again")

let binaryVal = 0b111
print(binaryVal)
let octalValue = 0o237
print(octalValue)
let hexaValue = 0xE
print(hexaValue)

// Tuple Value (Key Value)
let tupleValue = (404, "Not Found")
print(tupleValue.0)
print(tupleValue.1)

let (id, status) = (200, "OK")
print(id)
print(status)

let triplevalue = (234, "Abcd", true)
print(triplevalue.0)
print(triplevalue.1)
print(triplevalue.2)
print(triplevalue.self)

// Optinals
var strName : String?
//strName = "Summer"
//print(strName!) //加上！就能不把option（）打出来

// one way of handling optional
if strName != nil{
    print(strName)
}

// Another way of handling optional: If  let statement
if let name = strName {
    print(name)
}

//private static void sampleFunctionForGuard(String str){}
func sampleFunctionForGuard(strVal : String?){
    guard let name = strName else {return}
    print(name)
}



