//
//  BottomUpRodcutting.swift
//  RodCutAlgo
//
//  Created by Joshua Madrigal on 2/25/20.
//  Copyright © 2020 Joshua Madrigal. All rights reserved.
//


/*
 This file does not work but going to have it in here anyway
 Will need to keep playing with it, on my github..
 */

import Foundation

struct BottomUpRodcutting {
    
    public func cutRod(price: [Int], n: Int) -> Int {
        var temp = 0
        var i = 1
        var j = 1
        var arr = [Int](repeating: 0, count: (n+2))
        arr[0] = 0
        for j in j...n {
            temp = Int.min
            for i in i..<j {
                temp = max(temp, price[i] + arr[j-1])
//                print("\n\(temp)")
            }
            arr[j] = temp
//            print("\n\(arr[j])")
        }
        
        return arr[n]
    }
    
}
