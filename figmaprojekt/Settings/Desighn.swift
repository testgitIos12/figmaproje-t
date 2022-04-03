//
//  Desighn.swift
//  figmaprojekt
//
//  Created by Samir Maksutov on 31/3/22.
//

import Foundation
import UIKit
import SnapKit

class Setings: UIViewController{
    private lazy var moreLebel: UILabel = {
        let view = UILabel()
        view.text = "More"
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        return view
    }()
    private lazy var viewSetings: UIView = {
        let view = UIView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickProfile(sender:)))
        view.addGestureRecognizer(tapGesture)
        return view
    }()
    private lazy var profile: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Frame 3291"), for: .normal)
        view.addTarget(self, action: #selector(clickAccoun(view:)), for: .touchUpInside)
        return view
    }()
    private lazy var nameFirstLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Maksutov Samir"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var numberLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .gray
        view.text = "+996 706 32 40 76"
        view.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        return view
    }()
    private lazy var rigthButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var accountSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var acountButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-1"), for: .normal)
        return view
    }()
    private lazy var acountLebel2:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Account"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var acountButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var chatsSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var chats: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-2"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        return view
    }()
    private lazy var chatsLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Chats"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var chatsButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var appereanceSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var appereanceButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-4"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        return view
    }()
    private lazy var appereanceLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Appereance"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var appereanceButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var notificationSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var notificationButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector - 7"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var notificationLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Notification"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var notificationButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var privacySetings: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var privacyButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-5"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var privacyLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Privacy"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var privacyButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var dataUsageSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var dataUsageButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-6"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var dataUsageLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Data Usage"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var dataUsageButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var viewStroke: UILabel = {
        let view = UILabel()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.929, green: 0.929, blue: 0.929, alpha: 1).cgColor
        return view
        
    }()
    private lazy var helpSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var helpButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-8"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        return view
    }()
    private lazy var helpLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Help"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var helpButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var inviteSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var inviteButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-9"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        return view
    }()
    private lazy var inviteLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Invite Your Friends"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var inviteButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    @objc func clickProfile(sender: UITapGestureRecognizer) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func clickAccoun(view: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
                nameFirstLebel.text = "\(UserDefaultsService.shared.nameOne) \(UserDefaultsService.shared.nameTwo)"
        
        
        
        view.backgroundColor = .white
        
        view.addSubview(moreLebel)
        moreLebel.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top).offset(10)
            make.left.equalToSuperview().offset(24)
        }
        view.addSubview(viewSetings)
        viewSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(66)
            make.top.equalTo(moreLebel.snp.bottom).offset(29)
            make.leading.trailing.equalToSuperview()
        }
        
        viewSetings.addSubview(profile)
        profile.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-8)
        }
        viewSetings.addSubview(nameFirstLebel)
        nameFirstLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(profile.snp.right).offset(20)
        }
        viewSetings.addSubview(numberLebel)
        numberLebel.snp.makeConstraints { make in
            make.top.equalTo(nameFirstLebel.snp.bottom).offset(9)
            make.left.equalTo(profile.snp.right).offset(20)
        }
        viewSetings.addSubview(rigthButton)
        rigthButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-24)
        }
        view.addSubview(accountSetings)
        accountSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(viewSetings.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview()
        }
        accountSetings.addSubview(acountButton)
        acountButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.left.equalToSuperview().offset(20)
        }
        accountSetings.addSubview(acountLebel2)
        acountLebel2.snp.makeConstraints { make in
            make.left.equalTo(acountButton.snp.right).offset(13)
            make.top.equalToSuperview().offset(21)
        }
        accountSetings.addSubview(acountButtonRigth)
        acountButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.right.equalToSuperview().offset(-24)
        }
        view.addSubview(chatsSetings)
        chatsSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(accountSetings.snp.bottom)
            make.leading.trailing.equalToSuperview()
        }
        chatsSetings.addSubview(chats)
        chats.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(19)
            make.top.equalTo(acountButton.snp.bottom).offset(26)
        }
        chatsSetings.addSubview(chatsLebel)
        chatsLebel.snp.makeConstraints { make in
            make.left.equalTo(chats.snp.right).offset(12)
            make.top.equalToSuperview().offset(20)
        }
        chatsSetings.addSubview(chatsButtonRigth)
        chatsButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.right.equalToSuperview().offset(-24)
        }
        view.addSubview(appereanceSetings)
        appereanceSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(chatsSetings.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview()
        }
    }
}
