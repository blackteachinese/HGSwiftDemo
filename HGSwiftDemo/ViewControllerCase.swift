//
//  ViewController.swift
//  HGSwiftDemo
//
//  Created by Hugo on 3/29/23.
//

import UIKit
import Foundation

@testable import NotificationCenter

protocol Person {
    var name : String{get set}
}

struct Men : Person {
    var name = "BT"
    
    var age : Int {
        get {
            return 7 + 2
        }
        
        nonmutating set {
        }
    }
    
    func isStudent () -> Bool {
        return true
    }
    
    func hasMoney () -> Bool {
        return false
    }
    
    mutating func changeName () {
        name = "Hugo"
    }
}

protocol HugoScanViewDelegate {
    
}

@objc(HGQRCodeViewController)
class QRCodeViewController : UIViewController, HugoScanViewDelegate {
    
    private let timer = Timer()
    
    private var name : String
    
    var age : Int {
        get {
            return 7 + 2
        }
    }
    
    override func viewDidLoad() {
        let vc = ViewController();
    }
    
    convenience init () {
        self.init(aName: "BT")
    }
    
    init(aName : String) {
        name = aName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func sendHTTPRequest () {
        
    }
    
    @discardableResult
    func sum (a: Int, b: Int, c: Int) -> Int{
        return a + b
    }
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var vc1 = QRCodeViewController(aName: "Hugo")
        let sum1 = vc1.sum(a: 4, b: 9, c: 10)
        let vc2 = QRCodeViewController()
        let sum2 = vc2.sum(a: 3,
                           b: 4,
                           c: 12)
        var number = NSNumber()
    }
}

