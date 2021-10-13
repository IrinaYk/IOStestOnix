import UIKit

class Vector {
    var x: Double
    var y: Double
    var z: Double
    
    init(x: Double,y: Double, z: Double){
        self.x = x
        self.y = y
        self.z = z
    }
    
    func printCoordinat()  {
        print("x=\(x) y=\(y) z=\(z)")
    }
    
    func summ(secondVector:Vector)  -> Vector {
        let summVector = Vector(x: x+secondVector.x, y: y+secondVector.y, z: z+secondVector.z)
        return summVector
    }
 
    func diff(secondVector:Vector)  -> Vector {
        let diffVector = Vector(x: x-secondVector.x, y: y-secondVector.y, z: z-secondVector.z)
        return diffVector
    }
    
    func long() -> Double {
        let long = sqrt(x*x+y*y+z*z)
        return long
    }
    
    func scalyar(secondVector:Vector) -> Double{
        let result = self.x*secondVector.x + y * secondVector.y + z * secondVector.z
        return result
    }
    
    func vectorMult(secondVector:Vector) -> Vector {
        let vectorMult = Vector(x: y * secondVector.z - z * secondVector.y, y: z * secondVector.x - x * secondVector.z, z: x * secondVector.y - y * secondVector.x)
        return vectorMult
    }
    
    func angle(secondVector:Vector) -> Double {
        let cos = V1.scalyar(secondVector: V2) / (V1.long() * V2.long())
        let angle = acos(cos)
        return angle
    }
    
    static func massiv(quantity:Int) -> [Vector] {
        if quantity < 1 {
            fatalError("quantity must be > 0")
        }
        var massiVector = [Vector] ()
        for _ in 1...quantity {
            massiVector.append(Vector(x: 0, y: 0, z: 0))
        }
        return massiVector
    }
}


let V1 = Vector(x: 1, y: 0, z: 0)
let V2 = Vector(x: 4, y: 7, z: 0)
V1.printCoordinat()
let longV1 = V1.long()
let scalyrnyyDobutok = V1.scalyar(secondVector: V2)
let V3 = V1.summ(secondVector: V2)
let V4 = V1.diff(secondVector: V2)
let V5 = V1.vectorMult(secondVector: V4)
let angle = V2.angle(secondVector: V4)
let massiVector = Vector.massiv(quantity: 7)
