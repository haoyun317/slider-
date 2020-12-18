//
//  ViewController.swift
//  slider練習物體靠近
//
//  Created by  謝皓昀 on 2020/12/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var number: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func slider(_ sender: UISlider) {
        var leftImageViewOriginX = leftImageView.frame.origin.x
        var rightImageViewOriginX = rightImageView.frame.origin.x
        leftImageView.transform = CGAffineTransform(translationX: CGFloat(85 * sender.value), y: 0)
        rightImageView.transform = CGAffineTransform(translationX: CGFloat(-85 * sender.value), y: 0)
        rightImageView.alpha = 0
        rightImageView.alpha = CGFloat(sender.value / sender.maximumValue)
        let distance = Int(sender.value.rounded())
        number.text = "小新與" + distance.description + "隻小白的距離"
    }
    
}

