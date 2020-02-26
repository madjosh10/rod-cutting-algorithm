//
//  TopDownRodCutting.swift
//  RodCutAlgo
//
//  Created by Joshua Madrigal on 2/25/20.
//  Copyright © 2020 Joshua Madrigal. All rights reserved.
//

import Foundation

struct TopDownRodcutting {
    
    var counter = 0
    
    public mutating func cutRod(price: [Int], n: Int) -> Int {
        counter += 1
        let i = 0
        if(n <= 0) {
            return 0
        }
        var max_val = Int.min
        
        for i in i..<n {
            max_val = max(max_val, price[i] + cutRod(price: price, n: n-i-1))
        }
        return max_val
        
    } // end cutRod(price: [Int], n: Int) -> Int
    
}
