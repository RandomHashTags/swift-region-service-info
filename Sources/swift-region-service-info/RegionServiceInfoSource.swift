//
//  RegionServiceInfoSource.swift
//
//
//  Created by Evan Anderson on 12/9/23.
//

import Foundation

public struct RegionServiceInfoSource : Hashable {
    public let siteName:String
    public let url:String
    
    init(_ siteName: String, _ url: String) {
        self.siteName = siteName
        self.url = url
    }
    init(siteName: String, url: String) {
        self.siteName = siteName
        self.url = url
    }
}
