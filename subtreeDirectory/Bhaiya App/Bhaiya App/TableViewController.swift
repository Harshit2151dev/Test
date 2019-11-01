//
//  TableViewController.swift
//  Bhaiya App
//
//  Created by Harshit Kumar on 03/07/19.
//  Copyright © 2019 Harshit Kumar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,ViewControllerProtocol {
    var tableArray = [[Int]]()
    func getData(array: [Int]) {
        print("data is \(array)")
        tableArray[array[3]] = array
        self.tableView.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ShopGoodsDetail"
        tableArray = [[300,150,150,0],[400,150,250,1]]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableArray.count
    }
//    @IBOutlet weak var remainingField: UITextField!
//    @IBOutlet weak var soldField: UITextField!
//    @IBOutlet weak var tatalField: UITextField!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell
        let value = tableArray[indexPath.row]
        cell.tatalField.text = String(value[0])
        cell.soldField.text = String(value[1])
        cell.remainingField.text = String(value[2])


        // Configure the cell...

        return cell
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        if (segue.identifier == "ViewController") {
            let vc = segue.destination as! ViewController
            if let indexPath = self.tableView.indexPathForSelectedRow {
                vc.array = self.tableArray[indexPath.row]
                vc.delegate = self
                vc.index = indexPath.row
            }
            //vc.index = self.tableView.indexPathForSelectedRow
        } else if (segue.identifier == "PopUp") {
            let vc = segue.destination as! PopUpViewController
            vc.tableArray = self.tableArray

            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
