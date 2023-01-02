//
//  InventoryController.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class InventoryController {
    private let adjustInventoryService: AdjustInventoryService

    public init(adjustInventoryService: AdjustInventoryService) {
        self.adjustInventoryService = adjustInventoryService
    }

    public func adjustInventory(viewModel: ViewModel) -> String {
        let command: AdjustInventory = viewModel.adjustInventoryCommand
        adjustInventoryService.execute(command)
        return "result"
    }
}
