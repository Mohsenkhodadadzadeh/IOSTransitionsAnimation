//
//  ViewController.swift
//  TransationAnimation
//
//  Created by mohsen khodadadzadeh on 8/23/18.
//  Copyright © 2018 mohsen khodadadzadeh. All rights reserved.
//

import UIKit
// A delay function
func delay(seconds: Double, completion: @escaping ()-> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}
class ViewController: UIViewController {

    //MARK : heart's objects
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var heartTitle: UILabel!
    @IBOutlet weak var heartDesc: UILabel!
    
    //MARK : Clock's objects
    @IBOutlet weak var clockImage: UIImageView!
    @IBOutlet weak var clockTitle: UILabel!
    @IBOutlet weak var clockDesc: UILabel!
    
    //MARK : Letter's Objects
    @IBOutlet weak var letterImage: UIImageView!
    @IBOutlet weak var letterTitle: UILabel!
    @IBOutlet weak var letterDesc: UILabel!
    
    //Encrypte's objects
    @IBOutlet weak var encImage: UIImageView!
    @IBOutlet weak var encTitle: UILabel!
    @IBOutlet weak var encDesc: UILabel!
    
    //Views
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var clockView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        heartImage.isHidden = true
        heartTitle.isHidden = true
        heartDesc.isHidden = true
        
        clockImage.isHidden = true
        clockTitle.isHidden = true
        clockDesc.isHidden = true
        
        letterImage.isHidden = true
        letterTitle.isHidden = true
        letterDesc.isHidden = true
        
        encImage.isHidden = true
        encTitle.isHidden = true
        encDesc.isHidden = true
        
    }

    override func viewWillAppear(_ animated: Bool) {
        delay(seconds: 2.0) {
            
            // Animation for heart Image
            UIView.transition(with: self.heartImage, duration: 1.0, options: [.curveEaseOut , .transitionCurlDown], animations: {
                self.heartImage.isHidden = false
            }) { _ in
                
                //Animate for heart title
                UIView.transition(with: self.heartTitle, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                    self.heartTitle.isHidden = false
                }, completion: nil)
            
                //animate for heartDesc
                UIView.transition(with: self.heartDesc, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                    self.heartDesc.isHidden = false
                }) {_ in
                    
                    
                    // Animation for clock Image
                    UIView.transition(with: self.clockImage, duration: 1.0, options: [.curveEaseOut , .transitionCurlDown], animations: {
                        self.clockImage.isHidden = false
                    }) { _ in
                        
                        //Animate for clock title
                        UIView.transition(with: self.clockTitle, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                            self.clockTitle.isHidden = false
                        }, completion: nil)
                        
                        //animate for clock desc
                        UIView.transition(with: self.clockDesc, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                            self.clockDesc.isHidden = false
                        }) {_ in
                            
                            
                            
                            
                            // Animation for letter Image
                            UIView.transition(with: self.letterImage, duration: 1.0, options: [.curveEaseOut , .transitionCurlDown], animations: {
                                self.letterImage.isHidden = false
                            }) { _ in
                                
                                //Animate for letter title
                                UIView.transition(with: self.letterTitle, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                                    self.letterTitle.isHidden = false
                                }, completion: nil)
                                
                                //animate for letterDesc
                                UIView.transition(with: self.letterDesc, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                                    self.letterDesc.isHidden = false
                                }) {_ in
                                    
                                    
                                    // Animation for enc Image
                                    UIView.transition(with: self.encImage, duration: 1.0, options: [.curveEaseOut , .transitionCurlDown], animations: {
                                        self.encImage.isHidden = false
                                    }) { _ in
                                        
                                        //Animate for heart title
                                        UIView.transition(with: self.encTitle, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                                            self.encTitle.isHidden = false
                                        }, completion: nil)
                                        
                                        //animate for encDesc
                                        UIView.transition(with: self.encDesc, duration: 0.33, options: [.curveLinear , .transitionFlipFromBottom], animations: {
                                            self.encDesc.isHidden = false
                                        }) {_ in
                                            
                                            
                                        }
                                    }
                                    
                                    
                                }
                            }
                            
                            
                            
                        }
                    }
                    
                    
                    
                }
        }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

