//
//  Firebase+Utils.swift
//  SwipeMatching
//
//  Created by Hrabowskie, Rj on 3/13/19.
//  Copyright © 2019 Hrabowskie, Rj. All rights reserved.
//

import Firebase

extension Firestore {
    func fetchCurrentUser(completion: @escaping (User?, Error?) -> ()) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Firestore.firestore().collection("users").document(uid).getDocument { (snapshot, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            
            guard let dictionary = snapshot?.data() else {
                let error = NSError(domain: "com.rickeyhrabowskie", code: 500, userInfo: [NSLocalizedDescriptionKey: "No user found in Firestore"])
                completion(nil, error)
                return
            }
            let user = User(dictionary: dictionary)
            completion(user, nil)
        }
    }
}
