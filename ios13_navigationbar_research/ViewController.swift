//
//  ViewController.swift
//  ios13_navigationbar_research
//
//  Created by yhonda on 2019/09/05.
//  Copyright © 2019 yhonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapButton() {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

class SecondViewController: UIViewController {
    
    private var searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        navigationItem.titleView = searchBar
    }
}
