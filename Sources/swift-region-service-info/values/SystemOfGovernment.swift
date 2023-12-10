//
//  SystemOfGovernment.swift
//
//
//  Created by Evan Anderson on 12/10/23.
//

import Foundation
import SwiftSovereignStates

// https://en.wikipedia.org/wiki/List_of_countries_by_system_of_government
public struct SystemOfGovernment : RegionServiceInfoProtocol {
    public var type : RegionServiceInfoType {
        return RegionServiceInfoType.systemOfGovernment
    }
    
    public func yearOfData(for region: Country) -> Int {
        return 2023
    }
    
    public func additionalNotes(for region: Country, locale: Locale) -> String? {
        return nil
    }
    
    public func sources(for region: Country) -> [RegionServiceInfoSource] {
        return [RegionServiceInfoSource("Wikipedia: List of countries by system of government", "https://en.wikipedia.org/wiki/List_of_countries_by_system_of_government")]
    }
    
    /// Legally recognized system of government; several states that are constitutional republics are in practice ruled as authoritarian states.
    public func deJureType(for region: Country) -> SystemOfGovernmentType {
        switch region {
        case .afghanistan:
            return .unknown // TODO: fix
        case .albania,
                .armenia,
                .austria,
                .bangladesh,
                .barbados,
                .bosnia_and_herzegovina,
                .bulgaria,
                .croatia,
                .czech_republic,
                .dominica,
                .estonia,
                .ethiopia,
                .fiji,
                .finland,
                .georgia,
                .germany,
                .greece,
                .hungary,
                .iceland,
                .india,
                .iraq,
                .ireland,
                .israel,
                .italy,
                .latvia,
                .lebanon,
                .malta,
                .mauritius,
                .moldova,
                .montenegro,
                .nepal,
                .north_macedonia,
                .pakistan,
                .poland,
                .samoa,
                .san_marino,
                .serbia,
                .singapore,
                .slovakia,
                .slovenia,
                .somalia,
                .trinidad_and_tobago,
                .vanuatu,
            
                .kosovo
            :
            return .parliamentaryRepublic
        case .algeria,
                .azerbaijan,
                .cape_verde,
                .democratic_republic_of_the_congo,
                .republic_of_the_congo,
                .timor_leste,
                .egypt,
                .france,
                .guinea_bissau,
                .haiti,
                .kazakhstan,
                .lithuania,
                .madagascar,
                .mauritania,
                .mongolia,
                .mozambique,
                .namibia,
                .palestine,
                .portugal,
                .romania,
                .russia,
                .sao_tome_and_principe,
                .sri_lanka,
                .tunisia,
                .ukraine,
            
                .northern_cyprus,
                //.south_ossetia,
                .taiwan
            :
            return .semiPresidentialRepublic
        case .andorra,
                .antigua_and_barbuda,
                .australia,
                .bahamas,
                .belgium,
                .belize,
                .cambodia,
                .canada,
                .denmark,
                .grenada,
                .jamaica,
                .japan,
                .lesotho,
                .luxembourg,
                .malaysia,
                .netherlands,
                .new_zealand,
                .norway,
                .papua_new_guinea,
                .saint_kitts_and_nevis,
                .saint_lucia,
                .saint_vincent_and_the_grenadines,
                .solomon_islands,
                .spain,
                .sweden,
                .thailand,
                .tuvalu,
                .united_kingdom,
            
                .cook_islands,
                .niue
            :
            return .constitutionalMonarchyCeremonial
        case .angola,
                .botswana,
                .guyana,
                .kiribati,
                .marshall_islands,
                .micronesia,
                .nauru,
                .south_africa,
                .suriname,
                .switzerland:
            return .republicExecutivePresidency
        case .argentina,
                .belarus,
                .benin,
                .bolivia,
                .brazil,
                .burundi,
                .cameroon,
                .central_african_republic,
                .chile,
                .colombia,
                .comoros,
                .costa_rica,
                .ivory_coast,
                .cyprus,
                .djibouti,
                .dominican_republic,
                .ecuador,
                .el_salvador,
                .equatorial_guinea,
                .gambia,
                .ghana,
                .guatemala,
                .honduras,
                .indonesia,
                .iran,
                .kenya,
                .kyrgyzstan,
                .liberia,
                .malawi,
                .maldives,
                .mexico,
                .nicaragua,
                .nigeria,
                .palau,
                .panama,
                .paraguay,
                .peru,
                .philippines,
                .rwanda,
                .senegal,
                .seychelles,
                .sierra_leone,
                .south_korea,
                .south_sudan,
                .syria,
                .tajikistan,
                .tanzania,
                .togo,
                .turkey,
                .turkmenistan,
                .uganda,
                .united_states,
                .uruguay,
                .uzbekistan,
                .venezuela,
                .zambia,
                .zimbabwe,
            
                .abkhazia,
                .somaliland,
                .transnistria
            :
            return .presidentialRepublic
        case .bahrain,
                .bhutan,
                .jordan,
                .kuwait,
                .liechtenstein,
                .monaco,
                .morocco,
                .qatar,
                .tonga,
                .united_arab_emirates:
            return .constitutionalMonarchyExecutive
        case .brunei,
                .eswatini,
                .oman,
                .saudi_arabia,
                .vatican_city:
            return .absoluteMonarchy
        case .cuba,
                .eritrea,
                .laos,
                .north_korea,
                .vietnam//,
            
                //.sahrwi_arab_democratic_republic
            :
            return .onePartyState
            
        case .burkina_faso,
                .chad,
                .gabon,
                .guinea,
                .mali,
                .myanmar,
                .niger,
                .sudan
            :
            return .unknown
            
        default:
            return .unknown
        }
    }
}
