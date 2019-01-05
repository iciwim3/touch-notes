//
//  Note.swift
//  touch-notes
//
//  Created by Sain-R Edwards on 1/4/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import Foundation

class Note {
    
    private(set) public var message: String
    public var lockStatus: LockStatus
    
    init(message: String, lockStatus: LockStatus) {
        self.message = message
        self.lockStatus = lockStatus
    }
}
