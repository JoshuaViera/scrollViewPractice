//
//  ViewController.swift
//  UIScrollView-Image-Zooming
//
//  Created by Joshua Viera on 2/5/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       myScrollView.delegate = self
        myScrollView.zoomScale = 1.0
        myScrollView.minimumZoomScale = 1
        myScrollView.maximumZoomScale = 12.0 // x times
    }

    

}

extension ViewController : UIScrollViewDelegate{
    //mandatory method tp actiate ZOOMing on the image view
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView
    }
}
