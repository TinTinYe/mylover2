//
//  MyLover2TableViewController.swift
//  mylover2
//
//  Created by Yvonne on 2019/11/27.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class MyLover2TableViewController: UITableViewController {
    var mylovers = [MyLover(name: "A", intro: "aa", imageName: "lion"         ),MyLover(name: "B", intro: "bb", imageName: "rabbit"),MyLover(name: "C", intro: "cc", imageName: "turtle")]
    
 //   var mans = [MyLover(name: "D", intro: "dd", imageName: "1", gender:true),MyLover(name: "E", intro: "ee", imageName: "2", gender:true),MyLover(name: "f", intro: "ff", imageName: "3", gender:true)]
    
    var number = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return mylovers.count
    }

 
    @IBSegueAction func showDetail(_ coder: NSCoder) -> LoverDetailViewController? {
     if let row = tableView.indexPathForSelectedRow?.row{
       let lover = mylovers[row]
   //    let man = mans[row]
        return LoverDetailViewController (coder: coder, lover: lover)
     }else{
       return nil
      }

  }
        
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"lover", for: indexPath) as! LoverTableViewCell
     

        // Configure the cell...
        
        if indexPath.row == 1{
            number += 1
            if number % 2 == 0{
                cell.backgroundColor = UIColor.yellow
            }else
            {cell.backgroundColor = UIColor.red
                
            }
        }
        
      let myLover = mylovers[indexPath.row]
    //    let man = mans[indexPath.row]
  
        
        // Configure the cell...

//        cell.textLabel?.text = myLover.name
//        cell.detailTextLabel?.text = myLover.intro
//        cell.imageView?.image = UIImage(named: myLover.imageName)
//
//        cell.nameLabel.text = myLover.name
        
       // print(myLover.name)
       // print(myLover.imageName)
        cell.nameLabel.text = myLover.name
        cell.imageView?.image = UIImage(named: myLover.imageName)
    
   //cell.photoImageView?.image = UIImage(named:myLover.imageName)
        
        return cell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
