//
//  MatchesNavBar.swift
//  SwipeMatching
//
//  Created by Hrabowskie, Rj on 5/31/19.
//  Copyright © 2019 Hrabowskie, Rj. All rights reserved.
//

import LBTATools

class MatchesNavBar: UIView {
    
    let backButton = UIButton(image: #imageLiteral(resourceName: "app_icon"), tintColor: .lightGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        let iconImageView = UIImageView(image: #imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysTemplate), contentMode: .scaleAspectFit)
        iconImageView.tintColor = #colorLiteral(red: 0.9981002212, green: 0.2146139741, blue: 0.3829047382, alpha: 1)
        let messagesLabel = UILabel(text: "Messages", font: .boldSystemFont(ofSize: 20), textColor: #colorLiteral(red: 1, green: 0.2164273858, blue: 0.3827819824, alpha: 1), textAlignment: .center)
        let feedLabel = UILabel(text: "Feed", font: .boldSystemFont(ofSize: 20), textColor: .gray, textAlignment: .center)
        setupShadow(opacity: 0.2, radius: 8, offset: .init(width: 0, height: 10), color: .init(white: 0, alpha: 0.3))
        stack(iconImageView.withHeight(44),
                     hstack(messagesLabel, feedLabel, distribution: .fillEqually)).padTop(10)
        
        
        addSubview(backButton)
        backButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 12, bottom: 0, right: 0), size: .init(width: 34, height: 34))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
