//
//  CartTableViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 26/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    static var Order = [orderItems]()
    
    //static var i:Int = 0
    
    var name = String()
    var price = Float()
    var count = Int()
    
    var sum:Float = 0.0
    
    @IBOutlet weak var totalAmount: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var or = orderItems()
        
        or.Name = name
        
        or.price = price
        
        CartTableViewController.Order.append(or)
        
        for obj in CartTableViewController.Order
        {
            sum = sum + obj.price
        }
        
        totalAmount?.text = "Total :   " + String(format:"%.2f",sum)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cart", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = CartTableViewController.Order[indexPath.row].Name

        cell.detailTextLabel?.text = String(format: "%.2f", CartTableViewController.Order[indexPath.row].price)
        
        return cell
    }
  
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
         //let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if editingStyle == .delete {
            // Delete the row from the data source
            
            
            
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
        
        var DestView = segue.destination as! DetailViewController
        
        DestView.total = String(format: "%.2f",sum)
        
    }
    

}
