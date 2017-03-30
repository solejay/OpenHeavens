//
//  DevotionalViewController.swift
//  OpenHeavens2017
//
//  Created by Segun Solaja on 3/30/17.
//  Copyright © 2017 Segun Solaja. All rights reserved.
//

import UIKit

class DevotionalViewController: UIViewController {

  @IBOutlet weak var contentTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
      
    }
  
    private func configureView(){
      
      self.navigationItem.titleView = getNavigationTitleView()
      contentTableView.tableHeaderView = getHeader()
      contentTableView.tableFooterView = UIView(frame: CGRect.zero)
      contentTableView.estimatedRowHeight = 70
      contentTableView.rowHeight = UITableViewAutomaticDimension
      contentTableView.dataSource = self
      contentTableView.delegate = self
    }
  
    private func getHeader() -> DevotionalContentHeader{
      let header = DevotionalContentHeader(frame: CGRect(x: 0, y: 0, width: contentTableView.frame.width, height: 250))
      return header
    }
  
    private func getNavigationTitleView() -> NavigationTitleView{
      let navigation = NavigationTitleView(frame: CGRect(x: 40, y: 0, width: 250, height: (self.navigationController?.navigationBar.frame.height)!))
      navigation.backgroundColor = .clear
      navigation.devotionalTitle.text = "Dealing With Ancestral Curse"
      navigation.devotionalDate.text = "March 30 2017"
      return navigation
    }
  
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
    }


}

extension DevotionalViewController:UITableViewDelegate,UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = contentTableView.dequeueReusableCell(withIdentifier: "subtitleCell") as! DevContentCell
    
    switch indexPath.row {
    case 0:
      cell.messageContent.text = "Blotting out the handwriting of ordinances that was against us, which was contrary to us, and took it out of the way, nailing it to his cross;\nColossians 2:14"
      cell.subtitleIcon.image = #imageLiteral(resourceName: "memorise-pin")
      cell.coverImage.image = #imageLiteral(resourceName: "memorise-cover")
      cell.subtitleIcon.isHidden = false
      cell.messageSubtitle.isHidden = false
      cell.messageContent.textColor = .darkGray
      cell.messageSubtitle.textColor = .darkGray
    case 2:
      cell.messageContent.text = "Blotting out the handwriting of ordinances that was against us, which was contrary to us, and took it out of the way, nailing it to his cross;\nColossians 2:14"
      cell.subtitleIcon.isHidden = true
      cell.messageSubtitle.isHidden = true
      cell.coverImage.image = #imageLiteral(resourceName: "bible-reading-cover")
      cell.messageContent.textColor = .darkGray
    case 3:
      cell = contentTableView.dequeueReusableCell(withIdentifier: "hymnCell") as! DevContentCell
      cell.messageSubtitle.textColor = .white
      cell.subtitleIcon.isHidden = false
      cell.messageSubtitle.isHidden = false
    case 4:
      cell.messageContent.text = "Father, please completely destroy the power of ancestral curses in my life in Jesus’ name."
      cell.messageContent.textColor = .white
      cell.messageSubtitle.textColor = .white
      cell.subtitleIcon.isHidden = false
      cell.messageSubtitle.isHidden = false
      cell.subtitleIcon.image = #imageLiteral(resourceName: "prayer-icon")
      cell.coverImage.image = #imageLiteral(resourceName: "prayer-cover")
    
    default:
      cell = contentTableView.dequeueReusableCell(withIdentifier: "messageCell") as! DevContentCell
      cell.messageContent.text = "Whether you recognize it or not, the seeds for your glorious future have already been sown. Your various life experiences, relationships, even your mistakes have all contributed to fertilize those seeds of purpose. God’s route to your glorious future relies on His unique sense of direction, not the logical, straightforward route you might envision.\n\nThe doorway to your glorious future is likely to be open already, waiting for you to step up and walk through it. If you’re frustrated by unrealized dreams and ongoing disappointments, ask God to show you today’s step, the one priority to keep you moving forward."
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let header = DevotionalSectionHeader(frame: CGRect(x: 0, y: 0, width: contentTableView.frame.width, height: 40))
    header.devotionalTitle.text = "Dealing With Ancestral Curse"
    return header
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return  40
  }
}
