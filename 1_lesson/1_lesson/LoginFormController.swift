//
//  LoginFormController.swift
//  1_lesson
//
//  Created by Владимир Матвеев on 01.02.2021.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet weak var skollView: UIScrollView!
    
    @IBOutlet weak var loginInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        skollView?.contentInset = contentInsets
    }
    
    @objc func keyboardWasShown(notification: Notification){
        let info = notification.userInfo! as NSDictionary
        
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        self.skollView?.contentInset = contentInsets
        
        skollView?.scrollIndicatorInsets
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        
        
    }
}

