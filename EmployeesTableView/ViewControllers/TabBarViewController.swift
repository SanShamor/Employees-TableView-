//
//  TabBarViewController.swift
//  EmployeesTableView
//
//  Created by Александр on 15.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers(with: persons)
    }
    
    func setupControllers(with personList: [Person]) {
        let firstVC = viewControllers?.first as! FirstListTV
        let secondVC = viewControllers?.last as! SecondListTV
        
        firstVC.employee = persons
        secondVC.employee = persons
    }
    
}
