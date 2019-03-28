//
//  Bindable.swift
//  SwipeMatching
//
//  Created by Hrabowskie, Rj on 3/6/19.
//  Copyright © 2019 Hrabowskie, Rj. All rights reserved.
//

import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}
