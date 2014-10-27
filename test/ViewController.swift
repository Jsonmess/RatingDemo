//
//  ViewController.swift
//  test
//
//  Created by json on 14/10/26.
//  Copyright (c) 2014年 JS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    var ratingView:JSRatingView?;
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var EnterScore: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpView();
       }

    func SetUpView()
    {
        
        if(ratingView == nil)
        {
            
            ratingView=JSRatingView(frame:CGRectMake(100, 0, 100, 80));
        
        }
        ImageView.addSubview(ratingView!);
        //设置代理
        EnterScore.delegate=self;
    
    }
        
    
    @IBAction func ShowStar(sender: AnyObject) {
      
        self.ratingView?.showStarbyRatingValueWith(RatingValue:(self.EnterScore.text as NSString).floatValue);
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool
  {
    EnterScore.resignFirstResponder();
    return true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

