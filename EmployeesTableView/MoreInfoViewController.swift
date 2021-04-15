//
//  MoreInfoViewController.swift
//  EmployeesTableView
//
//  Created by Александр on 15.04.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var employeeInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "\(employeeInfo.fullName)"
        phoneNumberLabel.text = "Phone: \(employeeInfo.phoneNumber)"
        emailLabel.text = "Email: \(employeeInfo.email)"
    }
    
}
