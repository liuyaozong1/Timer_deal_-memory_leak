//
//  SecViewController.swift
//  Test7
//
//  Created by liuyaozong on 2021/8/28.
//

import UIKit

class SecViewController: UIViewController {

    var index: Int = 0
    var timer: Timer?
    var target = NSObject()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        class_addMethod(NSObject.self, #selector(log), class_getMethodImplementation(Self.self, #selector(IMPLog))!, "V@:@")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: target, selector: #selector(log), userInfo: nil, repeats: true)
    }
    
    
//
//    override func didMove(toParent parent: UIViewController?) {
//        if parent == nil {
//            timer?.invalidate()
//            timer = nil
//        }
//    }
//
    @objc func IMPLog() {
        print("imp 转发")
    }
    

//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        timer?.invalidate()
//        timer = nil
//    }
    
    @objc func log() {
        index += 1
        print("定时器在作用----\(index)")
    }
    
    deinit {
        print("销毁了")
        timer?.invalidate()
        timer = nil
    }

}
