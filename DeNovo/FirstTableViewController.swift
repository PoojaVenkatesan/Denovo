//
//  FirstTableViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 26/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var FirstTableArray = [String]()
    
    var secondArray = [secondTable]()
    
    var ThirdArray = [ThirdView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstTableArray = ["mulbags.jpg","mulwatches1.jpg","mulcosmetics.jpg"]
        
        secondArray = [secondTable(secondTitle:["Gucci","ButterFly","Caprese","Fastrack"],pic: ["gucci.jpg","Butterfly.jpg","caprese.jpg","fastrack.jpg"]),
                       secondTable(secondTitle:["Fastrack","Titan","GShock","Sonata"],pic:["fastrackWatch.jpg","titan.jpg","gshock.jpg","sonata.jpg"]),
                       secondTable (secondTitle:["MakeUpkit","Eyeliner","FacialKit","Compact Powder"],pic:["makeupimg.jpg","eyelinerimg.jpg","facialimg.jpg","compactimg.jpg"])]
    
        ThirdArray = [ThirdView(ThirdViewArray: ["Gucci","ButterFly","Caprese","Fastrack"],
                                imageArray: ["gucci.jpg","Butterfly.jpg","caprese.jpg","fastrack.jpg"],
                                description: ["Faux leather material black colored satchel 36 centimeters height x 24 centimeters length x 16 centimeters width Do not expose to extreme heat","Polyester material peach colored handbag 11 inches height x 15 inches length x 5 inches width Zip closure with double handle 2 compartments and 2 pockets Do not expose to extreme heat","Faux leather material light pink colored satchel 28 centimeters height x 37.5 centimeters length x 15.5 centimeters width Zip closure with adjustable strap Do not expose to extreme heat","Faux Leather material pink colored hobo 12 inches height X 22 inches length Zip closure with double handle 2 pockets Do not expose to extreme heat"],
                                price: [1215.00,1999.00,2500.00,1495.00]),
                      
                      ThirdView(ThirdViewArray: ["Fastrack","Titan","GShock","Sonata"],
                                imageArray: ["fastrackWatch.jpg","titan.jpg","gshock.jpg","sonata.jpg"],
                                description: ["Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral Band Color: Brown, Band Material: Leather Watch Movement Type: Quartz, Watch Display Type: Analog Case Material: Brass, Case Diameter: 47 x 40 millimeters Water Resistance Depth: 50 meters, Buckle Clasp 1 Year Manufacturing Warranty and 6 Months Battery Warranty","Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral Band Color: Black, Band Material: Silicone Watch Movement Type: Light Powered Quartz, Watch Display Type: Analog Case Material: Stainless Steel Water Resistance Depth: 50 meters, Buckle Clasp 2 Years International Warranty","Dial Color: Black, Case Shape: Round, Dial Glass material: Mineral Band Color: Black, Band Material: Resin Watch Movement Type: Quartz, Watch Display Type: Digital Case Material: Resin Water Resistance Depth: 200 meters, Buckle Clasp Shock-Resistant, Luminous, Light Warranty type:Manufacturer; 2 Years Domestic Warranty","Dial Color: Gold, Case Shape: Round Band Color: Gold, Band Material: Stainless Steel Watch Movement Type: Quartz, Watch Display Type: Analog Warranty type: Manufacturer; 1 Year Domestic Warranty"],
                                price: [1195.00,2245.00,6565.00,895.00]),
                      
                      ThirdView(ThirdViewArray: ["MakeUpkit","Eyeliner","FacialKit","Compact Powder"],
                                imageArray: ["makeupimg.jpg","eyelinerimg.jpg","facialimg.jpg","compactimg.jpg"],
                                description: ["Two shades compact powders High shine eye shadows Juicy lip colours 24 Shades of Eye, 3 Shades of Blush, 2 Face Powders (1 Shimmer & 1 Non-Shimmer) and Sponge Applicator, 4 Lip Colours","Water resistant Deep intense color Easy to apply and dries fast Define the outline of your eyes Perfect daily wear eyeliner Travel friendly","Protects from bacteria, promotes cell renewal and hydrates skin. Anti-ageing benefits Makes skin soft and supple Nourish and rejuvenate skin to make it look healthy and glowing","Contains Vitamin E & C Advanced Micromesh Technology. Blends effortlessly Nourishes skin Moisturises skin Advanced Micromesh and Allantoin complex formula"],
                                price: [270.00,196.00,162.00,115.00])]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return FirstTableArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Firstcell", for: indexPath) as UITableViewCell

        // Configure the cell...
       // scaledImageView.contentMode = .scaleAspectFill
        
        cell.imageView?.image = UIImage.init(named: FirstTableArray[indexPath.row])
        
        cell.contentMode = .scaleAspectFill
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        
        var DestViewController = segue.destination as! SecondTableViewController
        
        var secondTableArrayTwo : secondTable
        
        secondTableArrayTwo = secondArray[indexPath.row]
        
        DestViewController.secondArray = secondTableArrayTwo.secondTitle
        
        DestViewController.imgArray = secondTableArrayTwo.pic
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.secondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
        DestViewController.secondImageAnswer = ThirdAnswerArray.imageArray
        
        DestViewController.secondDescAnswer = ThirdAnswerArray.description
        
        DestViewController.secondPriceAnswer = ThirdAnswerArray.price
    }

    

}
