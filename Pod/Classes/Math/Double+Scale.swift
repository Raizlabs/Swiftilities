//
//  Double+Scale.swift
//  Swiftilities
//
//  Created by Zev Eisenberg on 4/15/16.
//  Copyright © 2016 Raizlabs Inc. All rights reserved.
//
// Copyright 2016 Raizlabs and other contributors
// http://raizlabs.com/

public extension Double {
    #if swift(>=3.0)
    /**
     Re-maps a number from one range to another.

     - parameter from:  The range to interpret the number as being a part of.
     - parameter to:    The range to map the number to.
     - parameter clamp: Whether the result should be clamped to the `to` range.

     - returns: The input number, scaled from the `from` range to the `to` range.
     */
    func scale(from: ClosedRange<Double>, to: ClosedRange<Double>, clamp: Bool = false) -> Double {
        guard from != to else {
            return self // short circuit the math if they're equal
        }
        var result = ((self - from.lowerBound) / (from.upperBound - from.lowerBound)) * (to.upperBound - to.lowerBound) + to.lowerBound
        if clamp {
            result = max(min(result, to.upperBound), to.lowerBound)
        }
        return result
    }
    #else
    func scale(from from: ClosedInterval<Double>, to: ClosedInterval<Double>, clamp: Bool = false) -> Double {
        guard from != to else {
            return self // short circuit the math if they're equal
        }
        var result = ((self - from.start) / (from.end - from.start)) * (to.end - to.start) + to.start
        if clamp {
            result = max(min(result, to.end), to.start)
        }
        return result
    }
    #endif
}
