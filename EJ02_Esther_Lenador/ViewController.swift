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
    
    
    var isOn: Bool = true;

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        saveBtn.setImage(UIImage(systemName: "bookmark"), for: .normal)
        likeBtn.setImage(UIImage(systemName: "suit.heart"), for: .normal)
        shareBtn.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
    }

    
    @IBAction func savePressed(_ sender: UIButton) {
        changeIcon();
    }
    @IBAction func likePressed(_ sender: UIButton) {
        changeLikeIcon();
        
    }
    @IBAction func changeShareIcon(_ sender: UIButton) {

        changeShareIcon();
    }
    
    
    func changeIcon() {
        if isOn {
            saveBtn.setImage(UIImage(systemName:"bookmark.fill"), for: .normal)
        } else {
            saveBtn.setImage(UIImage(systemName: "bookmark"), for: .normal)
        }
        
        isOn.toggle();
    }
    
    func changeLikeIcon() {
        if isOn {
            likeBtn.setImage(UIImage(systemName:"suit.heart.fill"), for: .normal)
        } else {
            likeBtn.setImage(UIImage(systemName: "suit.heart"), for: .normal)
        }
        isOn.toggle();
    }
    
    func changeShareIcon() {
        if isOn {
            shareBtn.setImage(UIImage(systemName:"arrowshape.turn.up.right.fill"), for: .normal)
        } else {
            shareBtn.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
        }
        isOn.toggle();
    }
    
}
