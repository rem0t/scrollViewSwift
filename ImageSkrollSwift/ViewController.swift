//
//  ViewController.swift
//  ImageSkrollSwift
//
//  Created by Vladislav Kalaev on 03.02.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainSkrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainSkrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img2")]
        
        for i in 0..<imageArray.count {
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: CGFloat(0), width: self.mainSkrollView.frame.width, height: self.mainSkrollView.frame.height)
            
            mainSkrollView.contentSize.width = mainSkrollView.frame.width * CGFloat(i+1)
            mainSkrollView.addSubview(imageView)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

