//
//  myset.swift
//  pinasdS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func myset(){
    var set1 = Set<Int>()
    print(type(of:set1))
    
    set1.insert(123)
    print(set1.description)
    set1.insert(321)
    print(set1.description)
    set1.insert(123)
    set1.insert(12)
    set1.insert(13)
    set1.insert(1)
    print(set1.description)
    print(set1.count)
    //
    //set1=[]
    //print(set1.description)
    print("-----------")
    for num in set1{
        print(num)
    }
    print("------------")
    for num in set1.sorted(){
        print(num)
    }
    
    var set2 = Set<Int>()
    
    
    while set2.count < 6{
        var Ler = Int(arc4random() % 49) + 1
        set2.insert(Ler)
    }
    var set3 = set2.sorted()
    
    print(set3.description)
    
    //var Ler:[Int] = Array(repeating: 0, count: 1)
    //print(Ler.description)
    
    
    
}
