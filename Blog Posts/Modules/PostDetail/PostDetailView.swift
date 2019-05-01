//
//  PostDetailView.swift
//  Blog Posts
//
//  Created by Juliano Terres on 30/04/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of PostDetailView
class PostDetailView: UIViewController {
  
  let scrollView = UIScrollView()
  let imageTop = UIImageView()
  let titleLabel = UILabel()
  let textLabel = UILabel()
  let authorContainer = UIView()
  let authorImage = UIImageView()
  let authorTextContainer = UIView()
  let authorName = UILabel()
  let authorAbout = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
  }
  
  func setupView() {
    view.backgroundColor = .background
    navigationController?.transparent()
  }
  
  func addElementsInScreen() {
    addImageTop()
    addSrcrollView()
    addTitleLabel()
    addTextLabel()
    addAuthorContainer()
    addAuthorImage()
    addAuthorTextContainer()
    addAuthorName()
    addAuthorAbout()
  }
  
  func addImageTop() {
    view.addSubview(imageTop)
    imageTop.clipsToBounds = true
    imageTop.contentMode = .scaleAspectFill
    imageTop.image = UIImage(named: "image_random_1")
    imageTop.addConstraint(attribute: .top, alignElement: view, alignElementAttribute: .top, constant: 0)
    imageTop.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    imageTop.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    imageTop.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 250)
  }
  
  func addSrcrollView() {
    view.addSubview(scrollView)
    scrollView.backgroundColor = .background
    scrollView.addConstraint(attribute: .top, alignElement: imageTop, alignElementAttribute: .bottom, constant: 0)
    scrollView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    scrollView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    scrollView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
  func addTitleLabel() {
    scrollView.addSubview(titleLabel)
    titleLabel.font = .fontBold20
    titleLabel.textColor = .title
    titleLabel.text = "Orange carrot smoothie"
    titleLabel.numberOfLines = 0
    titleLabel.addConstraint(attribute: .top, alignElement: scrollView, alignElementAttribute: .top, constant: 30)
    titleLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    titleLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    titleLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addTextLabel() {
    scrollView.addSubview(textLabel)
    textLabel.font = .fontRegular14
    textLabel.textColor = .text
    textLabel.text = "Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together thereStar girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there Star girl moved from back beauty project and the of tending the if form sub taken and came together there"
    textLabel.numberOfLines = 0
    textLabel.addConstraint(attribute: .top, alignElement: titleLabel, alignElementAttribute: .bottom, constant: 15)
    textLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    textLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    textLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addAuthorContainer() {
    scrollView.addSubview(authorContainer)
    authorContainer.addConstraint(attribute: .top, alignElement: textLabel, alignElementAttribute: .bottom, constant: 30)
    authorContainer.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 30)
    authorContainer.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 30)
    authorContainer.addConstraint(attribute: .bottom, alignElement: scrollView, alignElementAttribute: .bottom, constant: 30)
    authorContainer.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addAuthorImage() {
    authorContainer.addSubview(authorImage)
    authorImage.layer.cornerRadius = 30
    authorImage.clipsToBounds = true
    authorImage.contentMode = .scaleAspectFill
    authorImage.backgroundColor = .red
    authorImage.addConstraint(attribute: .top, alignElement: authorContainer, alignElementAttribute: .top, constant: 0)
    authorImage.addConstraint(attribute: .left, alignElement: authorContainer, alignElementAttribute: .left, constant: 0)
    authorImage.addConstraint(attribute: .bottom, alignElement: authorContainer, alignElementAttribute: .bottom, constant: 0)
    authorImage.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 60)
    authorImage.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 60)
  }
  
  func addAuthorTextContainer() {
    authorContainer.addSubview(authorTextContainer)
    authorTextContainer.addConstraint(attribute: .left, alignElement: authorImage, alignElementAttribute: .right, constant: 15)
    authorTextContainer.addConstraint(attribute: .right, alignElement: authorContainer, alignElementAttribute: .right, constant: 0)
    authorTextContainer.addConstraint(attribute: .centerY, alignElement: authorImage, alignElementAttribute: .centerY, constant: 0)
  }
  
  func addAuthorName() {
    authorTextContainer.addSubview(authorName)
    authorName.font = .fontBold15
    authorName.textColor = .title
    authorName.text = "John Bos"
    authorName.numberOfLines = 0
    authorName.addConstraint(attribute: .top, alignElement: authorTextContainer, alignElementAttribute: .top, constant: 0)
    authorName.addConstraint(attribute: .left, alignElement: authorTextContainer, alignElementAttribute: .left, constant: 0)
    authorName.addConstraint(attribute: .right, alignElement: authorTextContainer, alignElementAttribute: .right, constant: 0)
    
    
  }
  
  func addAuthorAbout() {
    authorTextContainer.addSubview(authorAbout)
    authorAbout.font = .fontRegular11
    authorAbout.textColor = .text
    authorAbout.text = "Parents through and thought, this I that blue toys feedback. And, the at he from or had to lie she city blue awesome."
    authorAbout.numberOfLines = 0
    authorAbout.addConstraint(attribute: .top, alignElement: authorName, alignElementAttribute: .bottom, constant: 5)
    authorAbout.addConstraint(attribute: .left, alignElement: authorTextContainer, alignElementAttribute: .left, constant: 0)
    authorAbout.addConstraint(attribute: .right, alignElement: authorTextContainer, alignElementAttribute: .right, constant: 0)
    authorAbout.addConstraint(attribute: .bottom, alignElement: authorTextContainer, alignElementAttribute: .bottom, constant: 0)
  }
  
}
