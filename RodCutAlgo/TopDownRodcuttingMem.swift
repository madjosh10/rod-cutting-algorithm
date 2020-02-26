//
//  TopDownRodcuttingMem.swift
//  RodCutAlgo
//
//  Created by Joshua Madrigal on 2/25/20.
//  Copyright © 2020 Joshua Madrigal. All rights reserved.
//

struct TopDownRodcuttingMem {

    var counter = 0

    public mutating func memCutRod(price: [Int], n: Int) -> Int {
        var i = 0
        counter += 1
        var ar = [Int](repeating: 0, count: (n+1))
        for i in i..<ar.count {
            ar[i] = -1
        }
        return memCutRodAux(price: price, n: n ,r: ar)
    }
    
   public mutating func memCutRodAux(price: [Int], n: Int, r: [Int]) -> Int {
       var q = 0
       var i = 1
        var r = r.map { $0 }
//       print("\n\(r)")
       if r[n] >= 0 {
           return r[n]
       }
       if n == 0 {
           q = 0
       } else {
           for i in i..<n {
               q = max(q, price[i] + memCutRodAux(price: price, n: n-i-1, r: r))
           }
       }
     r[n] = q
       return q
   }
}
