//
//  TableViewController.swift
//  Lab4
//
//  Created by Hunter Bowman on 9/26/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var cities: Cities = Cities()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.getCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityTableViewCell
        
        cell.layer.borderWidth = 1.0
        
        // Get city items from model
        let city = cities.getCity(i:indexPath.row)
        
        // Pass data variables of the city item to the cell
        cell.cityName.text = city.getName()
        cell.cityDescription.text = city.getDescription()
        cell.cityImage.image = UIImage(named: city.getImageName())
        

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    @IBAction func addCity(_ sender: Any) {
        let alert = UIAlertController(title: "Add City", message: "For the Table", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter City name"
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("city name: \(name)")
                
               // let f4 = fruit(fn: name, fd: "Healthy", fin: "banana.jpg")
                
                self.cities.addCity(name: name, imageName: "city.jpg", description: "It's fun")
                
                //Method 1
               
                let indexPath = IndexPath (row: self.cities.getCount() - 1, section: 0)
                self.tableView.beginUpdates()
                self.tableView.insertRows(at: [indexPath], with: .automatic)
                self.tableView.endUpdates()
            }
        }))
        
        self.present(alert, animated: true)
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            cities.deleteCity(i: indexPath.row)
            
            // Delete the row from the data source
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }

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
        let selectedIndex: IndexPath = tableView.indexPath(for: sender as! UITableViewCell)!
        
        let city = cities.getCity(i: selectedIndex.row)
        
        // Get the new view controller using segue.destination.
        if (segue.identifier == "detailView") {
            if let viewController: DetailViewController = segue.destination as? DetailViewController {
                viewController.cityImage.image = UIImage(named: city.getImageName())
                viewController.cityDescription.text = city.getDescription()
            }
            
        }
    }
    

}
