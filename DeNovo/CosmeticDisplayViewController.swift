//
//  CosmeticDisplayViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 21/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class CosmeticDisplayViewController: UIViewController {

    var displayCell: UITableViewCell!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    
    @IBOutlet weak var cost: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //img.image = UIImage.init(named: (displayCell.imageView?.image)!)
        
        name.text = displayCell.textLabel?.text
        
        cost.text = displayCell.detailTextLabel?.text
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
