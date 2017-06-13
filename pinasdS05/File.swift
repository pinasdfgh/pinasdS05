//
//  File.swift
//  pinasdS05
//
//  Created by user on 2017/6/9.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func arraytest(){
    var a1 = [[1,2,3],[2,3,4],[],[1,2]]
    print(type(of:a1))
    
    a1 += [[11,12]]
    
    print(a1.description)
    
    a1.append(contentsOf: [[11],[1,5]])
    print(a1.description)
    
    a1.replaceSubrange(1...3, with: [[100,200]])
    print(a1.description)
    
    for (i , value) in a1.enumerated(){
        for (j,point) in value.enumerated(){
            print("\(i):\(j) => \(point)")
        }
    }
}

func poker (){
    //洗牌
    var poker:[Int] = Array();
    var rand: Int
    
    for i in 0..<52{
        poker += [i] //array 新增元素只能用＋＝或appead 若用poker[i]=i需要poker[i]要先宣告
    }
//    print(poker.description)
    var temp,rb:Int
    //陣列超出會當機
    for i in 0..<52{
        rb = 52 - i
        rand = Int.init(arc4random() % uint32(rb))
//        swap(poker[rb - 1], poker[rand])
        temp = poker[rb - 1]
        poker[rb-1] = poker[rand]
        poker[rand]=temp
//        temp = poker[a]
//        print(temp)
//        poker[i] = poker[rand]
//        poker[rand] = temp
    }
    print(poker.description)
    //發牌
    
    var players:[[Int]] = [[],[],[],[]]

    for (i,card) in poker.enumerated(){
        var per = i % 4
        players[per] += [card] //陣列只能與陣列相加
    }
    print(players.description)
    //攤牌
    var suit:[String] = ["黑桃","紅心","方塊","梅花"]
    var value:[String] = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    for (i,player) in players.enumerated(){
        var temp = player.sorted()
        for (_,card) in temp.enumerated(){
            print("\(suit[card/13])\(value[card%13])  ",terminator:"")
        }
        print()
    }
    
    
}

func testsort(){
    var test = [4,3,7,1,2,45]
   // test.sort()
    var test2 = test.sorted(by:<)
    print(test.description)
    print(test2.description)
}

func dictest(){
    
    var dic1 = ["name":"brad","gender":"male","age":"18"]
    print(type(of:dic1))
    print(dic1["name"])
    //有key改值沒有新增
    dic1["weight"] = "80"
    print(dic1.description)
    
    for (key,value) in dic1{
        print("\(key) => \(value)")
    }
    
    var dic2 = [1:"ok",2:"III",3:"ddd"]
    print(type(of:dic2))
    
    for (key,value) in dic2{
        print("\(key) => \(value)")
    }
//    dic2 = [:]
//    print(dic2.description)
    
    dic2.updateValue("Qoo", forKey: 4)
    print(dic2.description)
    
}



