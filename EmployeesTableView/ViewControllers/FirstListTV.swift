//
//  FirstListTV.swift
//  EmployeesTableView
//
//  Created by Александр on 14.04.2021.
//

import UIKit

class FirstListTV: UITableViewController {
    
    var employee: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employee.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstEmployePage", for: indexPath)
        let workerPath = employee[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = workerPath.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let info = employee[indexPath.row]
        moreInfoVC.employeeInfo = info
    }
    
}
