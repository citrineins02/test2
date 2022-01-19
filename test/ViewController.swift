//
//  ViewController.swift
//  test
//
//  Created by 이기현 on 2022/01/18.
//

import UIKit

class ViewController: UIViewController      {

    @IBOutlet weak var tfid: UITextField!
    @IBOutlet weak var tfpw: UITextField!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet var lblidr: UILabel!
    @IBOutlet var lblpwr: UILabel!
    
    @IBOutlet var lblloginr: UILabel!
    
    private var userId : String = ""
    private var userPw : String = ""
    
    override func viewDidLoad()              {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        }

    @IBAction func btn(_ sender: Any)   {
        if (self.tfid.text?.count)! <= 0     {
            lblidr.text = "아이디를 입력하세요."
            return
        }
        if (self.tfpw.text?.count)! <= 0     {
            lblpwr.text = "비밀번호를 입력하세요."
            return
        }

 
        userId = (self.tfid.text)!
        userPw = (self.tfpw.text)!
        
        if userId == userPw  {
            lblloginr.text = "로그인이 되었습니다."
            return
        }
        if userId != userPw  {
            lblloginr.text = "비밀번호가 틀렸습니다."
            return
        }
        
    }
}

