//
//  ViewController.swift
//  ScrollViewUpdates
//
//  Created by Szi Gabor on 3/29/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    var contentWidth: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        


}

    override func viewWillAppear(_ animated: Bool) {
        
        let scrollWidth = scrollView.frame.size.width
        
        for index in 0...2 {
            
            let image = UIImage(named: "icon\(index).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(index)
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: scrollView.frame.midY - 75, width: 150, height: 150 )
            
            
        }
        //scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
}
