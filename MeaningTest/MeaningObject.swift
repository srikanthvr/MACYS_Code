//
//  MeaningObject.swift
//  MeaningTest
//
//  Created by Srikanth Reddy on 4/14/17.
//  Copyright © 2017 Srikanth Reddy. All rights reserved.
//

import UIKit

class MeaningObject: NSObject {
    var abbrevation : String?
    
    class func initWithDict(object: NSDictionary) -> MeaningObject{
        
        let meanObj = MeaningObject()

        let tempStr : String = object["lf"] as! String
        print("\(tempStr)")

        meanObj.abbrevation = tempStr

        return meanObj
    
    }
    class func meaningsWithArray(array: [NSDictionary]) -> [MeaningObject] {
        var abrevationsObject = [MeaningObject]()

        for item in array {
            let meanDict : NSDictionary = item as NSDictionary
            let meanObj : MeaningObject = self.initWithDict(object: meanDict) as MeaningObject
            abrevationsObject.append(meanObj)
        }
        return abrevationsObject
    }
}
