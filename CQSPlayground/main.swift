//
//  main.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation


// Opcao 1 - Com protocol
let command = AdjustInventory(productId: UUID(), decrease: false, quantity: 1)
let viewModel = ViewModel(command)

let service = AdjustInventoryService()

service.execute(command)

// Opcao 2 - Com struct generico + static function

let service2: CommandService2<AdjustInventory> = .updateInventory()
service2.execute(command)
