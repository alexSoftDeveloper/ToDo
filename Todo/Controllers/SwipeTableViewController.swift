//
//  SwipeTableViewController.swift
//  Todo
//
//  Created by Александр Гуркин on 18/11/24.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateModel(at: indexPath)
    }

    //    MARK - TableView Datasourse Methods
            
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
            
            cell.delegate = self
        
            return cell
        }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            print("delete cell")
//            if let categoryFirDeletion = self.categories?[indexPath.row] {
//                do {
//                    try self.realm.write {
//                        self.realm.delete(categoryFirDeletion)
//                    }
//                } catch {
//                        print("Error deleting category, \(error)")
//                    }
//                }
////                tableView.reloadData()
            
        }

        // customize the action appearance
        deleteAction.image = UIImage(named: "delete_icon")

        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
//        options.transitionStyle = .border
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
//         Update our data model.
    }
    
    
}
