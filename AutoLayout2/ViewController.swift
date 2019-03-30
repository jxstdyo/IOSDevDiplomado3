//
//  ViewController.swift
//  AutoLayout2
//
//  Created by Antonyo Chavez Saucedo on 3/29/19.
//  Copyright © 2019 Antonyo Chavez Saucedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var textview: UITextView!
    
    
    @IBOutlet weak var viewBottom: UIView!
    
    var imageName = String()
    var pageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupConstraints()
        setupUI()
        
        /*
        let cyanView = UIView()
        cyanView.backgroundColor = .cyan
        view.addSubview(cyanView)
        
        
        cyanView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: nil,
            trailing: view.layoutMarginsGuide.trailingAnchor,
            bottom: nil,
            size: CGSize(width: 100, height: 100))
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        view.addSubview(purpleView)
        
        purpleView.anchor(
            top: cyanView.bottomAnchor,
            leading: cyanView.leadingAnchor,
            trailing: cyanView.trailingAnchor,
            bottom: nil,
            padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0),
            size: CGSize(width: 0, height: 100))
        
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        
        greenView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.layoutMarginsGuide.leadingAnchor,
            trailing: purpleView.leadingAnchor,
            bottom: purpleView.bottomAnchor,
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8),
            size : CGSize(width: 0, height: 200))
        
        
        let redView = UIView()
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        redView.anchor(
            top: purpleView.bottomAnchor,
            leading: purpleView.leadingAnchor,
            trailing: purpleView.trailingAnchor,
            bottom: nil,
            padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0),
            size: CGSize(width: 0, height: 100))
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        view.addSubview(yellowView)
        
        yellowView.anchor(
            top: greenView.bottomAnchor,
            leading: nil,
            trailing: redView.leadingAnchor,
            bottom: redView.bottomAnchor,
            padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 8),
            size: CGSize(width: 100, height: 0))
        
        let brownView = UIView()
        brownView.backgroundColor = .brown
        view.addSubview(brownView)
        
        brownView.anchor(
            top: greenView.bottomAnchor,
            leading: view.layoutMarginsGuide.leadingAnchor,
            trailing: yellowView.leadingAnchor,
            bottom: redView.bottomAnchor,
            padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 8),
            size: CGSize(width: 100, height: 0))
        
        let blueView2 = UIView()
        blueView2.backgroundColor = .cyan
        view.addSubview(blueView2)
        
        blueView2.anchor(
            top: brownView.bottomAnchor,
            leading: view.layoutMarginsGuide.leadingAnchor,
            trailing: nil,
            bottom: nil,
            padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0),
            size: CGSize(width: 100, height: 100))
        */
        
    }
    func setupUI(){
        container.backgroundColor =  UIColor.Flat.Blue.PictonBlue
        viewBottom.backgroundColor = UIColor.Flat.Blue.Denim
        textview.backgroundColor = UIColor.Flat.Gray.WhiteSmoke
        textview.isSelectable = false
        textview.isEditable = false
        
        imagen.image = UIImage(named: imageName)
        
    }
    
    
    func setupConstraints(){
        container.anchor(
            top: view.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil )
        container.dimensionAnchors(
            height: view.heightAnchor,
            heightMultiplier: 0.5,
            width: nil)
        
        
        textview.anchor(
            top: container.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: view.bottomAnchor,
            padding: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            )
        
        
        imagen.centerAnchor(centerX: container.centerXAnchor, centerY: container.centerYAnchor)
        
        imagen.dimensionAnchors(height: container.heightAnchor, heightMultiplier: 0.25, width: nil)
        
        
        
        viewBottom.anchor(
            top: textview.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: view.bottomAnchor )
        
    }


}

