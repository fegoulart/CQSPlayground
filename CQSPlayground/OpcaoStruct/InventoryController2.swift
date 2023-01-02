//
//  InventoryController2.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class InventoryController2 {
    private let adjustInventoryService: CommandService2<AdjustInventory>

    public init(service: CommandService2<AdjustInventory>) {
        self.adjustInventoryService = service
    }

    public func adjustInventory(viewModel: ViewModel) -> String {
        let command: AdjustInventory = viewModel.adjustInventoryCommand
        adjustInventoryService.execute(command)
        return "result"
    }
}
