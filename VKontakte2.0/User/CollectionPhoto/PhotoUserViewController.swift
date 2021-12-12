//
//  PhotoUserViewController.swift
//  VKontakte2.0
//
//  Created by Степан Харитонов on 09.12.2021.
//

import UIKit

class PhotoUserViewController: UIViewController {

    @IBOutlet weak var selectItems: UILabel!
    @IBOutlet weak var numberItems: UILabel!
    @IBOutlet weak var photoInset: UIImageView!
    var visualEffectView: UIView?
    var userPhotoArray: [PhotoArray]?
    var numberItemsOnArray: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurMotion()
        photoPreview()
        
        let photoRecognizerLeft = UISwipeGestureRecognizer()
        photoRecognizerLeft.addTarget(self, action: #selector(reviewPhoto(_:)))
        photoRecognizerLeft.direction = .left
        self.view.addGestureRecognizer(photoRecognizerLeft)
        
        let photoRecognizerRight = UISwipeGestureRecognizer()
        photoRecognizerRight.addTarget(self, action: #selector(reviewPhotoRight(_:)))
        photoRecognizerRight.direction = .right
        self.view.addGestureRecognizer(photoRecognizerRight)
        
    }
    
    func blurMotion() {
        let blurEffect = UIBlurEffect(style: .dark)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            visualEffectView.frame = self.view.frame
            self.view.addSubview(visualEffectView)
            self.view.sendSubviewToBack(visualEffectView)
            self.visualEffectView = visualEffectView
        visualEffectView.alpha = 0.9
    }
    
    func photoPreview() {
        let selectItem = userPhotoArray![numberItemsOnArray!.item]
        photoInset.image = UIImage(named: selectItem.namePhotoUser)
        let number = String(describing: (userPhotoArray?.count)!)
        numberItems.text = number
        selectItems.text = String(describing: ((numberItemsOnArray?.item)!+1))
    }
    
    // swipe left
    @objc func reviewPhoto(_ recognizer: UISwipeGestureRecognizer) {
        if (numberItemsOnArray!.item+1) < userPhotoArray!.count {
        numberItemsOnArray?.item += 1
        viewDidLoad()
        }
    }
    
    // swipe right
    @objc func reviewPhotoRight(_ recognizer: UISwipeGestureRecognizer) {
        if (numberItemsOnArray!.item) > 0 {
        numberItemsOnArray?.item -= 1
        viewDidLoad()
        }
    }
}

//UIView.animate(withDuration: 0.55, animations: {cell.bounds.size = CGSize.init(width: 0, height: cell.bounds.height)})
