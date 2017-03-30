//
//  NavigationTitleView.swift
//  OpenHeavens2017
//
//  Created by Segun Solaja on 3/30/17.
//  Copyright © 2017 Segun Solaja. All rights reserved.
//

import UIKit

class NavigationTitleView: UIView {
  let devotionalTitle:UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .black
    return label
  }()

  let devotionalDate:UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = .lightGray
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(devotionalTitle)
    addSubview(devotionalDate)
    setupConstraints()
  }
  
  func setupConstraints(){
     devotionalTitle.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
     devotionalTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
     devotionalTitle.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
     devotionalTitle.heightAnchor.constraint(equalToConstant: 17).isActive = true
    
    devotionalDate.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    devotionalDate.bottomAnchor.constraint(equalTo: topAnchor).isActive = true
    devotionalDate.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    devotionalDate.heightAnchor.constraint(equalToConstant: 17).isActive = true
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
