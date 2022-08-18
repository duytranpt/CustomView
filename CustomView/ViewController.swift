//
//  ViewController.swift
//  CustomView
//
//  Created by Duy Tran on 16/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        demoView.roundCorners(radius: 20, corners: [.topRight, .topLeft, .bottomLeft])
    }
    
    @IBAction func gotoLineVC(_ sender: Any) {
        let stb = UIStoryboard(name: "LineVC", bundle: nil)
        let LineVC = stb.instantiateViewController(withIdentifier: "LineVC") as! LineVC
        navigationController?.pushViewController(LineVC, animated: true)
    }
    
    @IBAction func gotoViewVC(_ sender: Any) {
        let stb = UIStoryboard(name: "ViewVC", bundle: nil)
        let ViewVC = stb.instantiateViewController(withIdentifier: "ViewVC") as! ViewVC
        navigationController?.pushViewController(ViewVC, animated: true)
    }
}

