//
//  ViewController.swift
//  Autolayout
//
//  Created by Sriram Prasad on 02/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topCantainerView = UIView()
    let imageView = UIImageView()
    let label = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }

 func  setupViews(){
  
    topCantainerView.backgroundColor = .blue
    topCantainerView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(topCantainerView)
    topCantainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    topCantainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    topCantainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    topCantainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
//placing imageView on ContainerView
    imageView.image = UIImage(named: "green")
    imageView.contentMode = .scaleAspectFit
    imageView.layer.cornerRadius = 100
    imageView.clipsToBounds = true
    topCantainerView.addSubview(imageView)
    imageView.translatesAutoresizingMaskIntoConstraints  = false
    imageView.centerYAnchor.constraint(equalTo: topCantainerView.centerYAnchor).isActive = true
    imageView.centerXAnchor.constraint(equalTo: topCantainerView.centerXAnchor).isActive = true
    imageView.heightAnchor.constraint(equalTo: topCantainerView.heightAnchor, multiplier: 0.5).isActive = true
    
    
    
//    plaing desciptionext
    label.text = "Lets do Something Dude"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    label.isScrollEnabled = false
    label.isEditable = false
//    let attributdtext = NSAttributedString(string: "/Users/sriramprasad/Dev/rough/Autolayout/Autolayout/ViewController.swift", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
    
//    attributdtext
    
//    let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//
//    attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
//
//    label.attributedText = attributedText
    
    let yourAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black, .font: UIFont.boldSystemFont(ofSize: 25)]
    let yourOtherAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.gray, .font: UIFont.systemFont(ofSize: 14)]

    let partOne = NSMutableAttributedString(string: "This is an example ", attributes: yourAttributes)
    let partTwo = NSMutableAttributedString(string: "\n\n\nfor the combination of Attributed String!", attributes: yourOtherAttributes)
    
    partOne.append(partTwo)

    label.attributedText = partOne
    label.textAlignment = .center
    view.addSubview(label)
    label.topAnchor.constraint(equalTo: topCantainerView.bottomAnchor).isActive = true
    label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
    label.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10).isActive = true
    label.bottomAnchor.constraint(equalTo:view.bottomAnchor,constant: 10 ).isActive = true
    }

    
    
    
    }


