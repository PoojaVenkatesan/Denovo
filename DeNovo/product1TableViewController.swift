//
//  product1TableViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 25/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

var bags = ["bag1","bag2","bag3","bag4","bag5"]
var bagsdecs = ["a white crystal bag","pink lagoon bag", "mustard classic bag","brown lustrous bag","darkblue blossom bag" ]
var myindex=0

class product1TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return bags.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = bags[indexPath.row]
        // Configure the cell...
        
        cell.imageView?.image = UIImage.init(named: bags[indexPath.row] + ".jpeg")
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
