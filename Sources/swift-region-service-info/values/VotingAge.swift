//
//  VotingAge.swift
//
//
//  Created by Evan Anderson on 12/10/23.
//

import Foundation
import SwiftSovereignStates

public struct VotingAge : RegionServiceInfoProtocol {
    public var type : RegionServiceInfoType {
        return RegionServiceInfoType.votingAge
    }
    
    public func yearOfData(for region: Country) -> Int {
        return 2023
    }
    
    public func additionalNotes(for region: Country, locale: Locale) -> String? {
        switch region {
        case .afghanistan: return "No elections"
        case .argentina: return "Compulsory between 18 and 70. However, persons 15 years of age are permitted to vote in primary elections if they will be 16 years of age on or before the day of the general election"
        case .australia: return "Compulsory"
        case .belgium: return "16 in European elections"
        case .bolivia: return "Universal and compulsory"
        case .bosnia_and_herzegovina: return "16 if employed"
        case .brazil: return "Compulsory for 18 to 70; optional for illiterate citizens"
        case .brunei: return "Village elections only"
        case .dominican_republic: return "Married persons regardless of age (members of the armed forces and national police cannot vote)"
        case .ecuador: return "Universal, compulsory for literate persons ages 18–65, optional for other eligible voters"
        case .estonia: return "16 for local elections"
        case .germany: return nil // TODO: fix
        case .gibraltar: return "Universal, plus other British citizens who have been residents six months or more"
        case .greece: return "People that turn 17 in the year of the elections can vote. This means that if a 16-year-old teen was born in the last day of 2005, he/she can vote in an election taking place in 2022"
        case .guam: return "US citizens, but do not vote in US presidential elections"
        case .guatemala: return "Active-duty members of the armed forces may not vote and are restricted to their barracks on election day"
        case .hong_kong: return "Direct election 18 years of age; universal for permanent residents living in the territory of Hong Kong for the past seven years; indirect election limited to about 220,000 members of functional constituencies and a 1,200-member election committee drawn from broad regional groupings, municipal organizations, and central government bodies"
        case .indonesia: return "No threshold for married persons. The military and police cannot vote"
        case .israel: return "17 for municipal elections; 17 year olds can also vote in national elections held after their 18th Hebrew calendar birthday"
        case .north_korea: return "Members of the military have the right to vote, regardless of age"
        case .kuwait: return "For those not in the military or police forces; all voters must have been citizens for 20 years; current proposal for reduction to 18"
        case .liechtenstein: return "Compulsory"
        case .luxembourg: return "Compulsory until the age of 75"
        case .macau: return "Direct election 18 years of age, universal for permanent residents living in Macau for the past seven years; indirect election limited to organizations registered as \"corporate voters\" and a 300-member Election Committee drawn from broad regional groupings, municipal organizations, and central government bodies"
        case .northern_mariana_islands: return "Indigenous inhabitants are US citizens but do not vote in US presidential elections"
        case .norway: return "However, persons 17 years of age are permitted to vote in parliamentary elections if they will be 18 years of age in the year the election is held"
        case .oman: return "Except for members of the military and police"
        case .pakistan: return "Reserved parliamentary seats for women and non-Muslims"
        case .palestine: return "West Bank and Gaza"
        case .paraguay: return "Universal and compulsory until the age of 75"
        case .peru: return "Universal and compulsory until the age of 70"
        case .philippines: return "For youth councils: 15 to 30"
        //case .pitcairn_islands: return "Universal with three years' residency"
        case .puerto_rico: return "Island residents are US citizens but do not vote in US presidential elections. 16-year-olds may vote in local elections"
        case .qatar: return "Naturalized citizens cannot vote"
        case .scotland: return "16 for the Scottish independence referendum, all Scottish Parliament elections and Scottish local government elections"
        case .serbia: return "16 if employed"
        case .slovenia: return "16 if employed"
        case .switzerland: return "16 for cantonal and municipal elections in the canton of Glarus"
        case .thailand: return "Being a Thai citizen since birth, or at least five years"
        case .tunisia: return "With some exceptions"
        case .united_arab_emirates: return "At least 25 for membership of the Electoral College, which consists of a significant minority of all citizens (the minimum age is decided by the ruler of each Emirate and may vary from one Emirate to another)"
        case .united_kingdom:
            return "18 for United Kingdom wide general elections to the House of Commons.\n\n16 for the Scottish independence referendum, Scottish Parliament elections and Scottish local government elections.\n\n16 for Senedd (Welsh Parliament) elections and Welsh local elections."
        case .united_states: return "In many states, persons 17 years of age are permitted to vote in primary elections if they will be 18 years of age on or before the day of the general election. Some municipalities allow 16-year-olds to vote in local elections"
        case .united_states_virgin_islands: return "Island residents are U.S. citizens but do not vote in U.S. presidential elections"
        //case .wales: return "16 for Senedd (Welsh Parliament) elections and Welsh local elections"
        default:
            return nil
        }
    }
    
    public func sources(for region: Country) -> [RegionServiceInfoSource] {
        return []
    }
    
    public func value(for region: Country) -> VotingAge.Value? {
        switch region {
        case .afghanistan:
            return nil
        case .albania,
                .algeria,
                .american_samoa,
                .andorra,
                .angola,
                .anguilla,
                .antigua_and_barbuda,
                .armenia,
                .aruba,
                .australia,
                .azerbaijan,
                .bahamas,
                .bangladesh,
                .barbados,
                .belarus,
                .belgium,
                .belize,
                .benin,
                .bermuda,
                .bhutan,
                .bolivia,
                .bosnia_and_herzegovina,
                .botswana,
                .british_virgin_islands,
                .brunei,
                .bulgaria,
                .burkina_faso,
                .burundi,
                .cambodia,
                .canada,
                .cape_verde,
                .cayman_islands,
                .central_african_republic,
                .chad,
                .chile,
                .china,
                //.cocos_kneeling_islands,
                .colombia,
                .comoros,
                .democratic_republic_of_the_congo,
                .republic_of_the_congo,
                .cook_islands,
                .costa_rica,
                .ivory_coast,
                .croatia,
                .curacao,
                .cyprus,
                .czech_republic,
                .denmark,
                .djibouti,
                .dominica,
                .dominican_republic,
                .egypt,
                .el_salvador,
                .equatorial_guinea,
                .eritrea,
                .estonia,
                .eswatini,
                .ethiopia,
                .falkland_islands,
                .faroe_islands,
                .fiji,
                .finland,
                .france,
                //.french_guiana,
                .french_polynesia,
                .gabon,
                .gambia,
                .georgia,
                .germany,
                .ghana,
                .gibraltar,
                .greenland,
                .grenada,
                .guadeloupe,
                .guam,
                .guatemala,
                .guinea,
                .guinea_bissau,
                .guyana,
                .haiti,
                .honduras,
                .hong_kong,
                .hungary,
                .iceland,
                .india,
                .iran,
                .iraq,
                .ireland,
                .israel,
                .italy,
                .jamaica,
                .japan,
                .jordan,
                .kazakhstan,
                .kenya,
                .kiribati,
                .south_korea,
                .kosovo,
                .kyrgyzstan,
                .laos,
                .latvia,
                .lesotho,
                .liberia,
                .libya,
                .liechtenstein,
                .lithuania,
                .luxembourg,
                .macau,
                .madagascar,
                .malawi,
                .malaysia,
                .maldives,
                .mali,
                .marshall_islands,
                //.martinique,
                .mauritania,
                .mauritius,
                //.mayotte,
                .mexico,
                .micronesia,
                .moldova,
                .monaco,
                .mongolia,
                .montenegro,
                .montserrat,
                .morocco,
                .mozambique,
                .myanmar,
                .namibia,
                .nepal,
                .netherlands,
                .new_caledonia,
                .new_zealand,
                .niger,
                .nigeria,
                .niue,
                .norfolk_island,
                .north_macedonia,
                .northern_cyprus,
                .northern_mariana_islands,
                //.northern_ireland,
                .norway,
                .pakistan,
                .palau,
                .palestine,
                .panama,
                .papua_new_guinea,
                .paraguay,
                .peru,
                .philippines,
                //.pitcairn_islands,
                .poland,
                .portugal,
                .puerto_rico,
                .qatar,
                //.reunion,
                .romania,
                .russia,
                .rwanda,
                .saint_helena_ascension_and_tristan_da_cunha,
                .saint_kitts_and_nevis,
                .saint_lucia,
                .saint_pierre_and_miquelon,
                .saint_vincent_and_the_grenadines,
                .san_marino,
                .sao_tome_and_principe,
                .saudi_arabia,
                .senegal,
                .serbia,
                .seychelles,
                .sierra_leone,
                //.sint_maarten,
                .slovakia,
                .slovenia,
                .somalia,
                .south_africa,
                .south_sudan,
                .spain,
                .sri_lanka,
                .sudan,
                .suriname,
                .sweden,
                .switzerland,
                .syria,
                .tajikistan,
                .tanzania,
                .thailand,
                .togo,
                .trinidad_and_tobago,
                .tunisia,
                .turkey,
                .turkmenistan,
                .turks_and_caicos_islands,
                .tuvalu,
                .uganda,
                .ukraine,
                .united_kingdom,
                .united_states,
                .uruguay,
                .uzbekistan,
                .vanuatu,
                .venezuela,
                .vietnam,
                .united_states_virgin_islands,
                .wallis_and_futuna,
                .yemen,
                .zambia,
                .zimbabwe
            :
            return VotingAge.Value(18)
        case .argentina,
                .austria,
                .brazil,
                .cuba,
                .ecuador,
                .guernsey,
                .isle_of_man,
                .jersey,
                .malta,
                .nicaragua,
                .scotland//,
                //.wales
            :
            return VotingAge.Value(16)
        case .bahrain,
                .cameroon,
                .nauru,
                .taiwan
            :
            return VotingAge.Value(20)
        case .timor_leste,
                .greece,
                .indonesia,
                .north_korea
            :
            return VotingAge.Value(17)
        case .kuwait,
                .lebanon,
                .oman,
                .samoa,
                .singapore,
                .tokelau,
                .tonga
            :
            return VotingAge.Value(21)
        case .solomon_islands:
            return VotingAge.Value(19)
            
        case .united_arab_emirates:
            return VotingAge.Value("varies")
        case .western_sahara:
            return nil
        default:
            return nil
        }
    }
}

public extension VotingAge {
    struct Value : Hashable {
        public let valueInt:Int?, valueString:String?
        
        init(_ valueInt: Int) {
            self.valueInt = valueInt
            self.valueString = nil
        }
        init(_ valueString: String) {
            self.valueInt = nil
            self.valueString = valueString
        }
    }
}
