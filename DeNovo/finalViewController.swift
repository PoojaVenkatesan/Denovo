//
//  finalViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 26/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class finalViewController: UIViewController {
 
    var FirstString = String()
    var image = String()
    var desc = String()
    var price = Float()
    
    static var cnt:Int = 0
    var i = Int()
    
    var answerOrder = orderItems()
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var about: UITextView!
    
    @IBOutlet weak var amount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productName.text = FirstString
        
        imageView?.image = UIImage.init(named: image)
        
        about.text = desc
        
        amount.text = String(format: "%.2f", price)
        
        answerOrder.Name = FirstString
        
        answerOrder.price = price
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func AddToCart(_ sender: Any) {
        finalViewController.cnt = finalViewController.cnt + 1
        //i = finalViewController.cnt
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var DestViewController = segue.destination as! CartTableViewController
        
        DestViewController.name = answerOrder.Name
        
        DestViewController.price = answerOrder.price
        
        DestViewController.count = finalViewController.cnt;
        
    }
    

}
