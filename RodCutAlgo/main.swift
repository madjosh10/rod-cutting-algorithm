//
//  main.swift
//  RodCutAlgo
//
//  Created by Joshua Madrigal on 2/25/20.
//  Copyright © 2020 Joshua Madrigal. All rights reserved.
//

import Foundation

private var priceOfLengths = [1, 5, 8, 9, 10, 17, 17, 20 ,24 ,30]


var RecursiveTop = TopDownRodcutting()
var TopDownMem = TopDownRodcuttingMem()
var d = 1
var input: String

repeat {
    
    print("Input a number 1 - 10")
    input = readLine() ?? "No input"
    
    print("------------------------------------------------------")
    print("RecursiveTop max is -> \(RecursiveTop.cutRod(price: priceOfLengths, n: Int(input)!)) | Its Counter : \(RecursiveTop.counter)")
    RecursiveTop.counter = 0
    print("TopDownMem max is -> \(TopDownMem.memCutRod(price: priceOfLengths, n: Int(input)!)) | Its Counter: \(TopDownMem.counter)")
    print("------------------------------------------------------")
    d += 1
    
} while d <= 5



print(RecursiveTop.cutRod(price: priceOfLengths, n: Int(input)!))
