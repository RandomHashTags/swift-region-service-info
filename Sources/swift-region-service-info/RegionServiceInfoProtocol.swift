//
//  RegionServiceInfoProtocol.swift
//
//
//  Created by Evan Anderson on 12/9/23.
//

import Foundation
import SwiftSovereignStates

public protocol RegionServiceInfoProtocol {
    var type : RegionServiceInfoType { get }
    
    func yearOfData(for region: Country) -> Int
    
    func additionalNotes(for region: Country, locale: Locale) -> String?
    
    func sources(for region: Country) -> [RegionServiceInfoSource]
}
