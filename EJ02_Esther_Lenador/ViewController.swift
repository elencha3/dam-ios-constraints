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
    
    
    var isOn: Bool = false;
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    
    @IBAction func savePressed(_ sender: UIButton) {
        isOn.toggle();
        changeIcon();
    }
    @IBAction func likePressed(_ sender: UIButton) {
        isOn.toggle();
        changeLikeIcon();
        
    }
    @IBAction func changeShareIcon(_ sender: UIButton) {
        isOn.toggle();
        changeShareIcon();
    }
    
    
    func changeIcon() {
        if isOn {
            saveBtn.setImage(UIImage(systemName:"bookmark.fill"), for: .normal)
        } else {
            saveBtn.setImage(UIImage(systemName: "bookmark"), for: .normal)
        }
    }
    
    func changeLikeIcon() {
        if isOn {
            likeBtn.setImage(UIImage(systemName:"suit.heart.fill"), for: .normal)
        } else {
            likeBtn.setImage(UIImage(systemName: "suit.heart"), for: .normal)
        }
    }
    
    func changeShareIcon() {
        if isOn {
            shareBtn.setImage(UIImage(systemName:"arrowshape.turn.up.right.fill"), for: .normal)
        } else {
            shareBtn.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
        }
    }
    
}

