//
//  ProductTableViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 25/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    
    @IBOutlet var tableCell: CustomCell!
    var cosmeticImages: [String] = ["compactimg.jpg", "eyelinerimg.jpg", "facialimg.jpg", "makeupimg.jpg"]
    
    var names: [String] = ["Compact", "Eyeliner", "Facial", "MakeUp"]
    var prices: [String] = ["Rs.900","Rs.900", "Rs.900", "Rs.900"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        var nib = UINib(nibName:"customCell", bundle: nil)
        tableView.register(nib
            , forHeaderFooterViewReuseIdentifier: "customCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell

        // Configure the cell...
        cell.productImage.image = UIImage(named: cosmeticImages[indexPath.row])
        
        cell.productName.text = names[indexPath.row]
        
        cell.productPrice.text = prices[indexPath.row]
        
        tableCell = cell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detail", sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "detail") {
            var vc = segue.destination as! ProductDetailViewController
            vc.tableCell = tableCell
            
        }
    }
 

}
