//
//  Match.swift
//  SwipeMatching
//
//  Created by Hrabowskie, Rj on 6/14/19.
//  Copyright © 2019 Hrabowskie, Rj. All rights reserved.
//

import Foundation

struct Match {
    let name, profileImageUrl: String, uid: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
