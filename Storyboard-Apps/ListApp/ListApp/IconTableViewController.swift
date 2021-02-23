//
//  IconTableViewController.swift
//  ListApp
//
//  Created by Christian Gracia on 2/22/21.
//

import UIKit

class IconTableViewController: UITableViewController {
    
    let icons = ["😀", "🎭", "🚗", "🎨", "🇵🇹", "🇪🇸"]

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return icons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)

        
        cell.textLabel?.text = String(icons[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIcon = icons[indexPath.row]
        performSegue(withIdentifier: "Definition", sender: selectedIcon)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! DefinitionViewController
        
        let selectedIcon = sender as! String
        
        definitionVC.icon = selectedIcon
    }

}
