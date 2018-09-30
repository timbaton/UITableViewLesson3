//
//  TableViewController.swift
//  Project3
//
//  Created by Ильдар Залялов on 24.09.2018.
//  Copyright © 2018 Ильдар Залялов. All rights reserved.
//

import UIKit

struct Animal {
    var name: String
    var country: String
    var image: UIImage
}


class TableViewController: UITableViewController {
    
    var dataArray: [Animal]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArray = [Animal](repeating: Animal(name: "Wolf", country: "Russia", image: #imageLiteral(resourceName: "wolf")), count: 25)
        navigationItem.rightBarButtonItem = editButtonItem
        
    }

    
    @IBAction func addPressed(_ sender: Any) {
        
        dataArray.append(Animal(name: "New Wolf", country: "Russia", image: #imageLiteral(resourceName: "wolf")))
        
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: dataArray.count - 1, section: 0)], with: UITableViewRowAnimation.top)
        tableView.endUpdates()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomTableViewCell
        
        let animal = dataArray[indexPath.row]
        cell.configureCell(with: animal)
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        dataArray.swapAt(fromIndexPath.row, to.row)
        tableView.moveRow(at: fromIndexPath, to: to)
    }
    


    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Some header"
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
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
