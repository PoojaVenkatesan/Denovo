//
//  Model.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 19/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class Model: NSObject {
    var imageName:String = ""
    var imageDescription:String = ""
    var imageBy:String = ""
    var des:String = " "
    var price:String = " "
    init(name:String,description:String,by:String,des:String,price:String) {
        self.imageName = name
        self.imageDescription = description
        self.imageBy = by
        self.des = des
        self.price = price

}
    class func generateModelArray() -> [Model]{
        var modelAry = [Model]()
        
        modelAry.append(Model(name: "bag1", description: "White branded bag", by: "" , des: "lg wash", price: "₹1190"))
        modelAry.append(Model(name: "bag2", description: "Pink branded bag", by: "", des: "bosch", price:"₹2990"))
        modelAry.append(Model(name: "bag3", description: "Mustard branded bag", by: "Semi Automatic", des:"intex", price:"₹2890"))
        modelAry.append(Model(name: "bag4", description: "Purple branded bag", by: "Semi Automic", des: "panasonic", price:"₹2728"))
        modelAry.append(Model(name: "bag5", description: "Royal blue branded bag", by: "Fully Automatic", des:"ifb", price:"₹1690"))
        
        return modelAry
    }
}
