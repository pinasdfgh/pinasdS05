//
//  myfunction.swift
//  pinasdS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func myfun(){
    func fx(x:Int) -> Int {
        var result = 2 * x + 3
        return result
    }
    
    func sayYa(name:String, times:Int){
        for _ in 0..<times{
            print("Hi \(name)")
        }
        
    }
    
    func distance(x0:Int,y0:Int,x1:Int,y1:Int) -> (dx:Int,dy:Int){
        let dx = BradAbs(num:(x1 - x0))
        let dy = abs(y1 - y0)
        return (dx ,dy)
    }
    
    func distanceV2(p0:(x:Int,y:Int),p1:(x:Int,y:Int)) -> (dx:Int,dy:Int){
        return (abs(p0.x-p1.x) ,abs(p0.y-p1.y))
    }
    
    func BradAbs(num:Int) -> Int{
        return num > 0 ? num : -num
    }
    
    func findMinMax(array:[Int]) -> (min:Int,max:Int)?{
        if array.isEmpty{
            return nil
        }
        var max:Int = array[0]
        var min:Int = array[0]
        for cur in array{
            if max < cur{
                max = cur
            }
            if min > cur{
                min = cur
            }
            
        }
        
        return (min,max)
    }
    //在傳輸時參數不用寫成x:123=>123
    func test1(_ x : Int){
        print(x)
    }
    //這樣＿ name沒意義
    func sayHi(_ name:String = "World" ,_ times:Int = 1){
        for _ in 0..<times{
            print("Hello, \(name)")
        }
        
    }
    
    func calSum(_ num:Int ...) ->Int {
        print(num)
        var sum = 0
        //    if num.isEmpty {
        //        return sum
        //    }
        
        for cur in num{
            sum+=cur
        }
        return sum
    }
    
    func cp(_ filename:String..., target:String){
        for fname in filename{
            print("coying \(fname) to \(target)")
        }
    }
    //inout 取址的修飾字
    func bradswap(_ x:inout Int,_ y:inout Int){
        let temp = x
        x = y
        y = temp
    }
    
    func swapArray(_ array:inout [Int],_ x:Int,_ y:Int){
        let max = x > y ? x : y
        if array.count >= max{
            let temp = array[y]
            array[y] = array[x]
            array[x] = temp
        }
    }
    
    var ret = fx(x:123)
    print(ret)
    
    sayYa(name:"pinasd", times:2)
    
    var d = distance(x0: 10, y0: 2, x1: 3, y1: 4)
    
    print(d.dx)
    print(d.dy)
    
    var d2 = distanceV2(p0: (12,32), p1: (22,65))
    print(d2.dx)
    print(d2.dy)
    
    var a1:[Int] = []
    
    if let result = findMinMax(array: a1){
        print(result.max)
        print(result.min)
    }
    var result = findMinMax(array: a1) ?? (0,0)
    print(result.max)
    print(result.min)
    test1(120)
    //test1(X:120)
    sayHi("123",2)
    sayHi()
    
    var sum = calSum(1,4,6)
    print(sum)
    
    cp("file1" ,"file2" ,"file3",target: "dir" )
    
    var myx = 123
    var myy = 456
    bradswap(&myx, &myy)
    print(myx)
    print(myy)
    var a6:[Int] = [1,2]
    
    //swap(&a6[1], &a6[3])
    swapArray(&a6, 1, 3)
    print(a6)
}
