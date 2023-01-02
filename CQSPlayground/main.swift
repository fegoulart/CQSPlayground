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

let service3: CommandService2<UpdateProductReviewTotals> = .updateProductReviews()
let command3 = UpdateProductReviewTotals(productId: UUID(), productReview: ["5 STARS"])
service3.execute(command3)

// Opcao 2 + decorator

let serviceDecorator = TransactionCommandServiceDecorator2(decoratee: service2)
serviceDecorator.execute(command)
// serviceDecorator.execute(command3) - cannot Convert value - NO LSP violation
let anotherServiceDecorator = TransactionCommandServiceDecorator2(decoratee: service3)
anotherServiceDecorator.execute(command3)
