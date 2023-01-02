//
//  AdjustInventoryService2.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

//Implementations of the CommandService abstractions without protocols
extension CommandService2 where Command == AdjustInventory {

    static func updateInventory() -> Self {
        return .init { command in
            print("AdjustInventoryService")
        }
    }
}
