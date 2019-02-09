//
//  ViewController.swift
//  To Do List
//
//  Created by Joseph on 2/9/19.
//  Copyright © 2019 Joseph Parks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var toDoArray = ["Learn Swift", "Build Apps", "Change the World!."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
}
