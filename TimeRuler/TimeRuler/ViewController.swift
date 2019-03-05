//
//  ViewController.swift
//  TimeRuler
//
//  Created by 钱权 on 2019/3/5.
//  Copyright © 2019 quan.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        let timeRuler = TimeRuler.init(frame: CGRect.init(x: 0, y: view.bounds.height * 0.5 - 40.0, width: view.bounds.width, height: 80.0))
        let selecedArray: [[String:Int]] = [["start": 60,
                                             "end": 300],
                                            ["start": 500,
                                             "end": 800],
                                            ["start": 3600,
                                             "end": 4800],
                                            ["start": 8501,
                                             "end": 10000],
                                            ["start": 12000,
                                             "end": 15797],
                                            ["start": 18800,
                                             "end": 20000],
                                            ["start": 25000,
                                             "end": 30000]]
        timeRuler.setSelectedRange(rangeArray: selecedArray)
        
        view.addSubview(timeRuler)
    }


}

