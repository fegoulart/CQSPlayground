//
//  TransactionCommandServiceDecorator.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class TransactionCommandServiceDecorator<TransactionCommand>: CommandService {
    public typealias Command = TransactionCommand
    let service: CommandService

    public func execute(_ command: Command) {

    }

    public init() {
    //public init(service: CommandService) {
        fatalError("could not manage to use generic protocol here")
    }

}

extension TransactionCommandServiceDecorator where TransactionCommand == AdjustInventory {

}
