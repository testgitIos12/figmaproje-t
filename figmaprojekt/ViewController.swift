//
//  ViewController.swift
//  figmaprojekt
//
//  Created by Samir Maksutov on 29/3/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    private lazy var arrow: UIImageView = {
        var view = UIImageView()
        view.image = UIImage(named: "arrow")
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var avatar: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Avatar")
        return view
    }()
    
    private lazy var text: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 311, height: 30)
        view.backgroundColor = .white
        view.text = "Your Profile"
        view.textColor = UIColor(red: 0.059, green: 0.094, blue: 0.157, alpha: 1)
        view.font = UIFont(name: "Mulish-SemiBold", size: 18)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.33
        return view
    }()
    
    private lazy var textField: UITextField = {
       let view = UITextField()
        view.placeholder = "First Name (Required)"
        view.backgroundColor = .white
        view.layer.cornerRadius = 4
        view.layer.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.988, alpha: 1).cgColor
        return view
    }()
    private lazy var textField1: UITextField = {
       let view = UITextField()
        view.placeholder = "Last Name (Optional)"
        view.backgroundColor = .white
        view.layer.cornerRadius = 4
        view.layer.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.988, alpha: 1).cgColor
        return view
    }()
    private lazy var saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("Save", for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 327, height: 52)
        view.backgroundColor = .white
        view.layer.backgroundColor = UIColor(red: 0, green: 0.176, blue: 0.89, alpha: 1).cgColor
        view.layer.cornerRadius = 30
        view.addTarget(self, action: #selector(clickSave(view:)), for: .touchUpInside)
        return view
    }()
    
    @objc func clickSave(view: UIButton){
        navigationController?.pushViewController(Setings(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        
        view.addSubview(arrow)
        arrow.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(24)
        }
        
        view.addSubview(avatar)
        avatar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(145)
            make.centerX.equalToSuperview()
        }
        view.addSubview(text)
        text.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(56)
            make.left.equalToSuperview().offset(48)
        }
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalTo(avatar.snp.bottom).offset(34)
            make.left.equalToSuperview().offset(20)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        view.addSubview(textField1)
        textField1.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(20)
            make.width.equalTo(350)
            make.height.equalTo(40)
    }
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-0.1)
            make.left.right.equalToSuperview().inset(54)
            make.height.equalTo(54)
            
        }
    setupKeyboard()
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
}
    
    private func setupKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func keyBoardWillShow(notification: NSNotification) {
        openKeyBoardEvent(keyBoardHeight: (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height)
//        @objc private func keyBoardWillShow(notification: NSNotification) {
//                guard let userInfo = notification.userInfo,
//
//                      let endFrame =
//                        (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?
//                    .cgRectValue else {return}
//                let keyboardHeight = endFrame.size.height
//                UIView.animate(withDuration: 0.3) {
//                    self.saveButton.snp.remakeConstraints { make in
//                        make.left.equalToSuperview().offset(24)
//                        make.right.equalToSuperview().offset(-24)
//                        make.height.equalTo(52)
//                        make.bottom.equalToSuperview().offset(-keyboardHeight - 18)
//                    }
//                }
    }
    
    @objc func keyBoardWillHide(notification: NSNotification) {
        hideKeyBoardEvent(keyBoardHeight: (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height)
    }
    
    func openKeyBoardEvent(keyBoardHeight: CGFloat) {
        UIView.animate(withDuration: 1) {
            self.saveButton.transform = CGAffineTransform(translationX: 0, y: keyBoardHeight * -1 + -16)
        }
    }
    
    func hideKeyBoardEvent(keyBoardHeight: CGFloat) {
        UIView.animate(withDuration: 1) {
            self.saveButton.transform = CGAffineTransform(translationX: 0, y: 0)
        }
    }


    }


