//
//  Helpers.swift
//  touch-notes
//
//  Created by Sain-R Edwards on 1/5/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import Foundation

func isNoteLocked(_ lockStatus: LockStatus) -> Bool {
    if lockStatus == .locked {
        return true
    } else {
        return false
    }
}

func lockStatusFlipper(_ lockStatus: LockStatus) -> LockStatus {
    if lockStatus == .locked {
        return .unlocked
    } else {
        return .locked
    }
}
