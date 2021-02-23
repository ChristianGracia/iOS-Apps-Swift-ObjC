//
//  IconTableViewController.swift
//  ListApp
//
//  Created by Christian Gracia on 2/22/21.
//

import UIKit

class IconTableViewController: UITableViewController {
    
    let emojis = ["😀", "🎭", "🚗", "🎨", "🇵🇹", "🇪🇸"]

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)

        
        cell.textLabel?.text = String(emojis[indexPath.row])

        return cell
    }

}
