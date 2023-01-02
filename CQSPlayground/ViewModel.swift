//
//  ViewModel.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class ViewModel {
    public let adjustInventoryCommand: AdjustInventory

    public init(_ command: AdjustInventory) {
        adjustInventoryCommand = command
    }
}
