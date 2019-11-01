//
//  PopUpViewController.swift
//  Bhaiya App
//
//  Created by Harshit Kumar on 04/07/19.
//  Copyright © 2019 Harshit Kumar. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var tableArray = [[Int]]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableArray.count
    }
    //    @IBOutlet weak var remainingField: UITextField!
    //    @IBOutlet weak var soldField: UITextField!
    //    @IBOutlet weak var tatalField: UITextField!
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let value = tableArray[indexPath.row]
        cell.detailTextLabel?.text = String(value[0])
        
        
        // Configure the cell...
        
        return cell
    }
    
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }

}
