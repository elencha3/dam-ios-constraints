//
//  ViewController.swift
//  EJ02_Esther_Lenador
//
//  Created by user195954 on 1/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    //Button outlets
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!

    //Boolean vars for checking the state of the icons
    var isSaved: Bool = false;
    var isLiked: Bool = false;
    var isShared: Bool = false;
    
    //Change configuration of the icons
    let midConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .light, scale: .large)
    let largeConfig = UIImage.SymbolConfiguration(pointSize: 22, weight: .light, scale: .large)
    
    //icon images
    var saveImage, likeImage, shareImage, saveImageFilled, likeImageFilled, shareImageFilled: UIImage?;

    override func viewDidLoad() {
        super.viewDidLoad()
        //Set image and config for each icon
        likeImage = UIImage(systemName: "suit.heart", withConfiguration: midConfig);
        saveImage = UIImage(systemName: "bookmark", withConfiguration: midConfig);
        shareImage = UIImage(systemName: "arrowshape.turn.up.right", withConfiguration: midConfig);
        likeImageFilled = UIImage(systemName: "suit.heart.fill", withConfiguration: largeConfig);
        saveImageFilled = UIImage(systemName: "bookmark.fill", withConfiguration: largeConfig);
        shareImageFilled = UIImage(systemName: "arrowshape.turn.up.right.fill",withConfiguration: largeConfig);
        //Set each icon when loaded
        setIcon(btn: saveBtn, image: saveImage!)
        setIcon(btn: likeBtn, image: likeImage!)
        setIcon(btn: shareBtn, image: shareImage!)
    }

    @IBAction func btnClick(_ sender:UIButton) {
       //Switch for each button case 1 - save button, case 2 - like button, case 3 - share button
        switch sender.tag {
        case 1:
            changeIcon(btn: saveBtn, isOn: isSaved, image: saveImage!, imageFilled: saveImageFilled!);
            isSaved.toggle()
           
        case 2:
            changeIcon(btn: likeBtn, isOn: isLiked, image: likeImage!, imageFilled: likeImageFilled!)
            isLiked.toggle()
            
        case 3:
            changeIcon(btn: shareBtn, isOn: isShared, image: shareImage!, imageFilled: shareImageFilled!)
            isShared.toggle()
            
        default:
            setIcon(btn: saveBtn, image: saveImage!)
            setIcon(btn: likeBtn, image: likeImage!)
            setIcon(btn: shareBtn, image: shareImage!)
        }
        
    }
    //Set image to a button depending on the arguments
    func setIcon(btn: UIButton, image:UIImage){
        btn.setImage(image , for: .normal)
    }
    //Set image to a button depending on the arguments and checking if isOn is true or false.
    func changeIcon(btn: UIButton,  isOn: Bool, image: UIImage, imageFilled: UIImage){
        isOn ? setIcon(btn: btn, image:image) : setIcon(btn: btn, image:imageFilled);
    }
}
