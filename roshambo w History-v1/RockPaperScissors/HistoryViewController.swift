//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by James Miller on 4/1/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit
import Foundation

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    var allHistory: [String: String] = [:]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell")
        let item = self.allHistory[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = item.result
        cell?.imageView?.text = UIImage(named: item.imageName)
        
        if let detailTextLabel = cell?.detailTextLabel {
            detailTextLabel.text = item.message
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt IndexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
    

    }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

