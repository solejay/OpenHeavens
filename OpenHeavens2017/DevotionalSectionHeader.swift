//
//  DevotionalSectionHeader.swift
//  OpenHeavens2017
//
//  Created by Segun Solaja on 3/30/17.
//  Copyright © 2017 Segun Solaja. All rights reserved.
//

import UIKit

class DevotionalSectionHeader: UIView {

  let devotionalTitle:UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 16)
    label.textAlignment = .left
    label.textColor = .black
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(devotionalTitle)
    setupConstraints()
  }
  func setupConstraints(){
    devotionalTitle.leftAnchor.constraint(equalTo: leftAnchor, constant:24).isActive = true
    devotionalTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
    devotionalTitle.rightAnchor.constraint(equalTo: rightAnchor, constant:-24).isActive = true
    devotionalTitle.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  

  
}
