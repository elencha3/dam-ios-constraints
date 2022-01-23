//
//  ViewController.swift
//  EJ02_Esther_Lenador
//
//  Created by user195954 on 1/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    
    
    var isLiked: Bool = false;
    var isSaved: Bool = false;
    var isShared: Bool = false;
    
    let likeImage = UIImage(systemName: "suit.heart");
    let saveImage = UIImage(systemName: "bookmark");
    let shareImage = UIImage(systemName: "arrowshape.turn.up.right");
    
    let likeImageFilled = UIImage(systemName: "suit.heart.fill");
    let saveImageFilled = UIImage(systemName: "bookmark.fill");
    let shareImageFilled = UIImage(systemName: "arrowshape.turn.up.right.fill");
    
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setIcon(btn: saveBtn, image: saveImage!)
        setIcon(btn: likeBtn, image: likeImage!)
        setIcon(btn: shareBtn, image: shareImage!)
    }

    @IBAction func btnClick(_ sender:UIButton) {
       
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
    
    func setIcon(btn: UIButton, image:UIImage){
        btn.setImage(image , for: .normal)
    }

    func changeIcon(btn: UIButton,  isOn: Bool, image: UIImage, imageFilled: UIImage){
        
        isOn ? btn.setImage(image, for: .normal) : btn.setImage(imageFilled, for: .normal);
    }
}
