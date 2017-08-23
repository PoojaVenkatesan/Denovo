//
//  DetailViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 19/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dataModel:Model!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var imageNameLabel: UILabel!

    @IBOutlet weak var yearLabel: UILabel!
    
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var byLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageNameLabel.text = dataModel.imageName
        yearLabel.text = dataModel.imageDescription
        byLabel.text = dataModel.imageBy
        price.text = dataModel.price
        imageView.image = UIImage(named:dataModel.imageName)
        
        
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
