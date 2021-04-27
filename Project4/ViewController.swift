//
//  ViewController.swift
//  Project4
//
//  Created by janis.muiznieks on 27/04/2021.
//
import UIKit

class ViewController: UITableViewController  {

    var websites = ["apple.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Websites!"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "webCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "webView") as? WebKitViewController {
            vc.website = websites[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
