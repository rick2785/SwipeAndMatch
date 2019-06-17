//
//  MatchesHeader.swift
//  SwipeMatching
//
//  Created by Hrabowskie, Rj on 6/17/19.
//  Copyright © 2019 Hrabowskie, Rj. All rights reserved.
//

import LBTATools

class MatchesHeader: UICollectionReusableView {
    let newMatchesLabel = UILabel(text: "New Matches", font: .boldSystemFont(ofSize: 18), textColor: #colorLiteral(red: 1, green: 0.2114250064, blue: 0.3787266612, alpha: 1))
    let matchesHorizontalController = MatchesHorizontalController()
    let messagesLabel = UILabel(text: "Messages", font: .boldSystemFont(ofSize: 18), textColor: #colorLiteral(red: 1, green: 0.2114250064, blue: 0.3787266612, alpha: 1))
    override init(frame: CGRect) {
        super.init(frame: frame)
        stack(stack(newMatchesLabel).padLeft(20),
              matchesHorizontalController.view,
              stack(messagesLabel).padLeft(20),
              spacing: 20).withMargins(.init(top: 20, left: 0, bottom: 8, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
