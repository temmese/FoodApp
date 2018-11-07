//
//  RestaurantTableViewController.swift
//  FoodApp
//
//  Created by Emese on 06/11/2018.
//  Copyright © 2018 EmeseToth. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    var restaurantNames = ["CafeDeadend", "Homei", "Teakha", "CafeLoisl", "PetiteOyster", "ForKeeRestaurant", "Po'sAtelier","BourkeStreetBakery","Haigh'sChocolate","PalominoEspresso","Upstate","Traif","GrahamAvenueMeats","Waffle&Wolf","FiveLeaves","CafeLore","Confessional","Barrafina","Donostia","RoyalOak","CASKPubandKitchen"]
    var restaurantLocation = ["CafeDeadend", "Homei", "Teakha", "CafeLoisl", "PetiteOyster", "ForKeeRestaurant", "Po'sAtelier","BourkeStreetBakery","Haigh'sChocolate","PalominoEspresso","Upstate","Traif","GrahamAvenueMeats","Waffle&Wolf","FiveLeaves","CafeLore","Confessional","Barrafina","Donostia","RoyalOak","CASKPubandKitchen"]
    var restaurantTypes = ["CafeDeadend", "Homei", "Teakha", "CafeLoisl", "PetiteOyster", "ForKeeRestaurant", "Po'sAtelier","BourkeStreetBakery","Haigh'sChocolate","PalominoEspresso","Upstate","Traif","GrahamAvenueMeats","Waffle&Wolf","FiveLeaves","CafeLore","Confessional","Barrafina","Donostia","RoyalOak","CASKPubandKitchen"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! RestaurantTableViewCell
        
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.typeLabel.text = restaurantLocation[indexPath.row]
        cell.locationLabel.text = restaurantTypes[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: "may")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenu = UIAlertController.init(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        present(optionMenu,animated: true, completion: nil)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
