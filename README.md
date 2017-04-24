# Swift2.0+

// this is a pull

Consider two Swift objects A and B:

```swift
struct A{
    let x = 0
    let y = 1
}

class B{
    var x = 0
    var y = 2
    var z = UIImage(named: "me.png")
    
}

let a = A()
let b = B()


print(a) // "A(x: 0, y: 1)\n"    ok, nice.
print(b) // "B\n"                say what!?

```

### Enter the Selfie protocol.

```swift
public protocol Selfie: CustomStringConvertible {}

extension Selfie {
   public var description: String {
        let mirror = Mirror(reflecting: self)
        return "\(mirror.subjectType)( \(mirror.children.map({ "\($0!): \($1) "}).joinWithSeparator(", ")))"
    }
}


class Absorved: Selfie{
    var x = 0
    var y = 2
    var z = UIImage(named: "me.png")
    
}

let narcisus = Absorved()
print(narcisus)  // "Absorved( x: 0 , y: 2 , z: Optional(<UIImage: 0x7fcc50417c30>, {235, 244}) )\n"

```
