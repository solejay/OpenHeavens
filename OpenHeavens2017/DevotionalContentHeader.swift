//
//  DevotionalContentHeader.swift
//  OpenHeavens2017
//
//  Created by Segun Solaja on 3/30/17.
//  Copyright © 2017 Segun Solaja. All rights reserved.
//

import UIKit

class DevotionalContentHeader: UIView {
  let coverImage:UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "DevotionaCover")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let playButton:UIButton = {
    let button  = UIButton(type: .system)
    button.tintColor = .white
    button.setImage(#imageLiteral(resourceName: "playcopy"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(coverImage)
    addSubview(playButton)
    setupConstraints()
  }
  
  func setupConstraints(){
    coverImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    coverImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    coverImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
    coverImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    playButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
    playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
    playButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
    playButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
