//
//  AdjustInventoryService.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class AdjustInventoryService: CommandService {

    public typealias Command = AdjustInventory

    public func execute(_ command: AdjustInventory) {
        // ...
        print("AdjustInventoryService")
    }
}
