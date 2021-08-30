//
//  ViewController.swift
//  Test7
//
//  Created by liuyaozong on 2021/8/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
       let vc = SecViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


}

