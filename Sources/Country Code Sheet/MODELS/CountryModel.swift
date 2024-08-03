//
//  CountryModel.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-01-14.
//

import Foundation

public struct CountryModel: Decodable, Identifiable, Hashable {
    // MARK: - PROPERTIES
    public var id: String { name }
    public let name, flag, countryCode, dialCode: String
    
    // MARK: - CODING KEYS
    private enum CodingKeys: String, CodingKey {
        case name
        case flag
        case countryCode = "code"
        case dialCode = "dial_code"
    }
    
    // MARK: - FUNCTIONS
    
    // MARK: - getCountryPhoneNumbersArray
    static func getCountryPhoneNumbersArray() -> [CountryModel]? {
        let jsonData = Data(jsonString.utf8)
        let decoder = JSONDecoder()
        
        do {
            let numbersArray: [CountryModel] = try decoder.decode([CountryModel].self, from: jsonData)
            return numbersArray
        } catch {
            print("ERROR: Parsing JSON Data: \(error.localizedDescription) 🚫🚫🚫")
            return nil
        }
    }
    
    // MARK: - PRIVATE PROPERTIES
    @MainActor
    static let mockObject: CountryModel = .init(
        name: "Sri Lanka",
        flag: "🇱🇰",
        countryCode: "LK",
        dialCode: "+94"
    )
    
    static private let jsonString: String = """
[
  {
    "name": "Afghanistan",
    "flag": "🇦🇫",
    "code": "AF",
    "dial_code": "+93"
  },
  {
    "name": "Albania",
    "flag": "🇦🇱",
    "code": "AL",
    "dial_code": "+355"
  },
  {
    "name": "Algeria",
    "flag": "🇩🇿",
    "code": "DZ",
    "dial_code": "+213"
  },
  {
    "name": "American Samoa",
    "flag": "🇦🇸",
    "code": "AS",
    "dial_code": "+1684"
  },
  {
    "name": "Andorra",
    "flag": "🇦🇩",
    "code": "AD",
    "dial_code": "+376"
  },
  {
    "name": "Angola",
    "flag": "🇦🇴",
    "code": "AO",
    "dial_code": "+244"
  },
  {
    "name": "Anguilla",
    "flag": "🇦🇮",
    "code": "AI",
    "dial_code": "+1264"
  },
  {
    "name": "Antigua & Barbuda",
    "flag": "🇦🇬",
    "code": "AG",
    "dial_code": "+1268"
  },
  {
    "name": "Argentina",
    "flag": "🇦🇷",
    "code": "AR",
    "dial_code": "+54"
  },
  {
    "name": "Armenia",
    "flag": "🇦🇲",
    "code": "AM",
    "dial_code": "+374"
  },
  {
    "name": "Aruba",
    "flag": "🇦🇼",
    "code": "AW",
    "dial_code": "+297"
  },
  {
    "name": "Australia",
    "flag": "🇦🇺",
    "code": "AU",
    "dial_code": "+61"
  },
  {
    "name": "Austria",
    "flag": "🇦🇹",
    "code": "AT",
    "dial_code": "+43"
  },
  {
    "name": "Azerbaijan",
    "flag": "🇦🇿",
    "code": "AZ",
    "dial_code": "+994"
  },
  {
    "name": "Bahamas",
    "flag": "🇧🇸",
    "code": "BS",
    "dial_code": "+1242"
  },
  {
    "name": "Bahrain",
    "flag": "🇧🇭",
    "code": "BH",
    "dial_code": "+973"
  },
  {
    "name": "Bangladesh",
    "flag": "🇧🇩",
    "code": "BD",
    "dial_code": "+880"
  },
  {
    "name": "Barbados",
    "flag": "🇧🇧",
    "code": "BB",
    "dial_code": "+1246"
  },
  {
    "name": "Belarus",
    "flag": "🇧🇾",
    "code": "BY",
    "dial_code": "+375"
  },
  {
    "name": "Belgium",
    "flag": "🇧🇪",
    "code": "BE",
    "dial_code": "+32"
  },
  {
    "name": "Belize",
    "flag": "🇧🇿",
    "code": "BZ",
    "dial_code": "+501"
  },
  {
    "name": "Benin",
    "flag": "🇧🇯",
    "code": "BJ",
    "dial_code": "+229"
  },
  {
    "name": "Bermuda",
    "flag": "🇧🇲",
    "code": "BM",
    "dial_code": "+1441"
  },
  {
    "name": "Bhutan",
    "flag": "🇧🇹",
    "code": "BT",
    "dial_code": "+975"
  },
  {
    "name": "Bolivia",
    "flag": "🇧🇴",
    "code": "BO",
    "dial_code": "+591"
  },
  {
    "name": "Bosnia & Herzegovina",
    "flag": "🇧🇦",
    "code": "BA",
    "dial_code": "+387"
  },
  {
    "name": "Botswana",
    "flag": "🇧🇼",
    "code": "BW",
    "dial_code": "+267"
  },
  {
    "name": "Brazil",
    "flag": "🇧🇷",
    "code": "BR",
    "dial_code": "+55"
  },
  {
    "name": "British Virgin Islands",
    "flag": "🇻🇬",
    "code": "IO",
    "dial_code": "+1284"
  },
  {
    "name": "Brunei Darussalam",
    "flag": "🇧🇳",
    "code": "BN",
    "dial_code": "+673"
  },
  {
    "name": "Bulgaria",
    "flag": "🇧🇬",
    "code": "BG",
    "dial_code": "+359"
  },
  {
    "name": "Burkina Faso",
    "flag": "🇧🇫",
    "code": "BF",
    "dial_code": "+226"
  },
  {
    "name": "Burundi",
    "flag": "🇧🇮",
    "code": "BI",
    "dial_code": "+257"
  },
  {
    "name": "Cambodia",
    "flag": "🇰🇭",
    "code": "KH",
    "dial_code": "+855"
  },
  {
    "name": "Cameroon",
    "flag": "🇨🇲",
    "code": "CM",
    "dial_code": "+237"
  },
  {
    "name": "Canada",
    "flag": "🇨🇦",
    "code": "CA",
    "dial_code": "+1"
  },
  {
    "name": "Cape Verde",
    "flag": "🇨🇻",
    "code": "CV",
    "dial_code": "+238"
  },
  {
    "name": "Cayman Islands",
    "flag": "🇰🇾",
    "code": "KY",
    "dial_code": "+1345"
  },
  {
    "name": "Central African Rep.",
    "flag": "🇨🇫",
    "code": "CF",
    "dial_code": "+236"
  },
  {
    "name": "Chad",
    "flag": "🇹🇩",
    "code": "TD",
    "dial_code": "+235"
  },
  {
    "name": "Chile",
    "flag": "🇨🇱",
    "code": "CL",
    "dial_code": "+56"
  },
  {
    "name": "China",
    "flag": "🇨🇳",
    "code": "CN",
    "dial_code": "+86"
  },
  {
    "name": "Colombia",
    "flag": "🇨🇴",
    "code": "CO",
    "dial_code": "+57"
  },
  {
    "name": "Comoros",
    "flag": "🇰🇲",
    "code": "KM",
    "dial_code": "+269"
  },
  {
    "name": "Congo (Dem. Rep.)",
    "flag": "🇨🇩",
    "code": "CD",
    "dial_code": "+243"
  },
  {
    "name": "Congo (Rep.)",
    "flag": "🇨🇬",
    "code": "CG",
    "dial_code": "+242"
  },
  {
    "name": "Cook Islands",
    "flag": "🇨🇰",
    "code": "CK",
    "dial_code": "+682"
  },
  {
    "name": "Costa Rica",
    "flag": "🇨🇷",
    "code": "CR",
    "dial_code": "+506"
  },
  {
    "name": "Cote d'Ivoire",
    "flag": "🇨🇮",
    "code": "CI",
    "dial_code": "+225"
  },
  {
    "name": "Croatia",
    "flag": "🇭🇷",
    "code": "HR",
    "dial_code": "+385"
  },
  {
    "name": "Cuba",
    "flag": "🇨🇺",
    "code": "CU",
    "dial_code": "+53"
  },
  {
    "name": "Cyprus",
    "flag": "🇨🇾",
    "code": "CY",
    "dial_code": "+357"
  },
  {
    "name": "Czech Republic",
    "flag": "🇨🇿",
    "code": "CZ",
    "dial_code": "+420"
  },
  {
    "name": "Denmark",
    "flag": "🇩🇰",
    "code": "DK",
    "dial_code": "+45"
  },
  {
    "name": "Diego Garcia",
    "flag": "🇮🇴",
    "code": "IO",
    "dial_code": "+246"
  },
  {
    "name": "Djibouti",
    "flag": "🇩🇯",
    "code": "DJ",
    "dial_code": "+253"
  },
  {
    "name": "Dominica",
    "flag": "🇩🇲",
    "code": "DM",
    "dial_code": "+1767"
  },
  {
    "name": "Dominican Rep.",
    "flag": "🇩🇴",
    "code": "DO",
    "dial_code": "+1809"
  },
  {
    "name": "Ecuador",
    "flag": "🇪🇨",
    "code": "EC",
    "dial_code": "+593"
  },
  {
    "name": "Egypt",
    "flag": "🇪🇬",
    "code": "EG",
    "dial_code": "+20"
  },
  {
    "name": "El Salvador",
    "flag": "🇸🇻",
    "code": "SV",
    "dial_code": "+503"
  },
  {
    "name": "Equatorial Guinea",
    "flag": "🇬🇶",
    "code": "GQ",
    "dial_code": "+240"
  },
  {
    "name": "Eritrea",
    "flag": "🇪🇷",
    "code": "ER",
    "dial_code": "+291"
  },
  {
    "name": "Estonia",
    "flag": "🇪🇪",
    "code": "EE",
    "dial_code": "+372"
  },
  {
    "name": "Eswatini",
    "flag": "🇸🇿",
    "code": "SZ",
    "dial_code": "+268"
  },
  {
    "name": "Ethiopia",
    "flag": "🇪🇹",
    "code": "ET",
    "dial_code": "+251"
  },
  {
    "name": "Falkland Islands",
    "flag": "🇫🇰",
    "code": "FK",
    "dial_code": "+500"
  },
  {
    "name": "Faroe Islands",
    "flag": "🇫🇴",
    "code": "FO",
    "dial_code": "+298"
  },
  {
    "name": "Fiji",
    "flag": "🇫🇯",
    "code": "FJ",
    "dial_code": "+679"
  },
  {
    "name": "Finland",
    "flag": "🇫🇮",
    "code": "FI",
    "dial_code": "+358"
  },
  {
    "name": "France",
    "flag": "🇫🇷",
    "code": "FR",
    "dial_code": "+33"
  },
  {
    "name": "French Guiana",
    "flag": "🇬🇫",
    "code": "GF",
    "dial_code": "+594"
  },
  {
    "name": "French Polynesia",
    "flag": "🇵🇫",
    "code": "PF",
    "dial_code": "+689"
  },
  {
    "name": "Gabon",
    "flag": "🇬🇦",
    "code": "GA",
    "dial_code": "+241"
  },
  {
    "name": "Gambia",
    "flag": "🇬🇲",
    "code": "GM",
    "dial_code": "+220"
  },
  {
    "name": "Georgia",
    "flag": "🇬🇪",
    "code": "GE",
    "dial_code": "+995"
  },
  {
    "name": "Germany",
    "flag": "🇩🇪",
    "code": "DE",
    "dial_code": "+49"
  },
  {
    "name": "Ghana",
    "flag": "🇬🇭",
    "code": "GH",
    "dial_code": "+233"
  },
  {
    "name": "Gibraltar",
    "flag": "🇬🇮",
    "code": "GI",
    "dial_code": "+350"
  },
  {
    "name": "Greece",
    "flag": "🇬🇷",
    "code": "GR",
    "dial_code": "+30"
  },
  {
    "name": "Greenland",
    "flag": "🇬🇱",
    "code": "GL",
    "dial_code": "+299"
  },
  {
    "name": "Grenada",
    "flag": "🇬🇩",
    "code": "GD",
    "dial_code": "+1473"
  },
  {
    "name": "Guadeloupe",
    "flag": "🇬🇵",
    "code": "GP",
    "dial_code": "+590"
  },
  {
    "name": "Guam",
    "flag": "🇬🇺",
    "code": "GU",
    "dial_code": "+1671"
  },
  {
    "name": "Guatemala",
    "flag": "🇬🇹",
    "code": "GT",
    "dial_code": "+502"
  },
  {
    "name": "Guinea",
    "flag": "🇬🇳",
    "code": "GN",
    "dial_code": "+224"
  },
  {
    "name": "Guinea-Bissau",
    "flag": "🇬🇼",
    "code": "GW",
    "dial_code": "+245"
  },
  {
    "name": "Guyana",
    "flag": "🇬🇾",
    "code": "GY",
    "dial_code": "+592"
  },
  {
    "name": "Haiti",
    "flag": "🇭🇹",
    "code": "HT",
    "dial_code": "+509"
  },
  {
    "name": "Honduras",
    "flag": "🇭🇳",
    "code": "HN",
    "dial_code": "+504"
  },
  {
    "name": "Hong Kong",
    "flag": "🇭🇰",
    "code": "HK",
    "dial_code": "+852"
  },
  {
    "name": "Hungary",
    "flag": "🇭🇺",
    "code": "HU",
    "dial_code": "+36"
  },
  {
    "name": "Iceland",
    "flag": "🇮🇸",
    "code": "IS",
    "dial_code": "+354"
  },
  {
    "name": "India",
    "flag": "🇮🇳",
    "code": "IN",
    "dial_code": "+91"
  },
  {
    "name": "Indonesia",
    "flag": "🇮🇩",
    "code": "ID",
    "dial_code": "+62"
  },
  {
    "name": "Iran",
    "flag": "🇮🇷",
    "code": "IR",
    "dial_code": "+98"
  },
  {
    "name": "Iraq",
    "flag": "🇮🇶",
    "code": "IQ",
    "dial_code": "+964"
  },
  {
    "name": "Ireland",
    "flag": "🇮🇪",
    "code": "IE",
    "dial_code": "+353"
  },
  {
    "name": "Israel",
    "flag": "🇮🇱",
    "code": "IL",
    "dial_code": "+972"
  },
  {
    "name": "Italy",
    "flag": "🇮🇹",
    "code": "IT",
    "dial_code": "+39"
  },
  {
    "name": "Jamaica",
    "flag": "🇯🇲",
    "code": "JM",
    "dial_code": "+1876"
  },
  {
    "name": "Japan",
    "flag": "🇯🇵",
    "code": "JP",
    "dial_code": "+81"
  },
  {
    "name": "Jordan",
    "flag": "🇯🇴",
    "code": "JO",
    "dial_code": "+962"
  },
  {
    "name": "Kazakhstan",
    "flag": "🇰🇿",
    "code": "KZ",
    "dial_code": "+7"
  },
  {
    "name": "Kenya",
    "flag": "🇰🇪",
    "code": "KE",
    "dial_code": "+254"
  },
  {
    "name": "Kiribati",
    "flag": "🇰🇮",
    "code": "KI",
    "dial_code": "+686"
  },
  {
    "name": "Kosovo",
    "flag": "🇽🇰",
    "code": "XK",
    "dial_code": "+383"
  },
  {
    "name": "Kuwait",
    "flag": "🇰🇼",
    "code": "KW",
    "dial_code": "+965"
  },
  {
    "name": "Kyrgyzstan",
    "flag": "🇰🇬",
    "code": "KG",
    "dial_code": "+996"
  },
  {
    "name": "Laos",
    "flag": "🇱🇦",
    "code": "LA",
    "dial_code": "+856"
  },
  {
    "name": "Latvia",
    "flag": "🇱🇻",
    "code": "LV",
    "dial_code": "+371"
  },
  {
    "name": "Lebanon",
    "flag": "🇱🇧",
    "code": "LB",
    "dial_code": "+961"
  },
  {
    "name": "Lesotho",
    "flag": "🇱🇸",
    "code": "LS",
    "dial_code": "+266"
  },
  {
    "name": "Liberia",
    "flag": "🇱🇷",
    "code": "LR",
    "dial_code": "+231"
  },
  {
    "name": "Libya",
    "flag": "🇱🇾",
    "code": "LY",
    "dial_code": "+218"
  },
  {
    "name": "Liechtenstein",
    "flag": "🇱🇮",
    "code": "LI",
    "dial_code": "+423"
  },
  {
    "name": "Lithuania",
    "flag": "🇱🇹",
    "code": "LT",
    "dial_code": "+370"
  },
  {
    "name": "Luxembourg",
    "flag": "🇱🇺",
    "code": "LU",
    "dial_code": "+352"
  },
  {
    "name": "Macau",
    "flag": "🇲🇴",
    "code": "MO",
    "dial_code": "+853"
  },
  {
    "name": "Macedonia",
    "flag": "🇲🇰",
    "code": "MK",
    "dial_code": "+389"
  },
  {
    "name": "Madagascar",
    "flag": "🇲🇬",
    "code": "MG",
    "dial_code": "+261"
  },
  {
    "name": "Malawi",
    "flag": "🇲🇼",
    "code": "MW",
    "dial_code": "+265"
  },
  {
    "name": "Malaysia",
    "flag": "🇲🇾",
    "code": "MY",
    "dial_code": "+60"
  },
  {
    "name": "Maldives",
    "flag": "🇲🇻",
    "code": "MV",
    "dial_code": "+960"
  },
  {
    "name": "Mali",
    "flag": "🇲🇱",
    "code": "ML",
    "dial_code": "+223"
  },
  {
    "name": "Malta",
    "flag": "🇲🇹",
    "code": "MT",
    "dial_code": "+356"
  },
  {
    "name": "Marshall Islands",
    "flag": "🇲🇭",
    "code": "MH",
    "dial_code": "+692"
  },
  {
    "name": "Martinique",
    "flag": "🇲🇶",
    "code": "MQ",
    "dial_code": "+596"
  },
  {
    "name": "Mauritania",
    "flag": "🇲🇷",
    "code": "MR",
    "dial_code": "+222"
  },
  {
    "name": "Mauritius",
    "flag": "🇲🇺",
    "code": "MU",
    "dial_code": "+230"
  },
  {
    "name": "Mexico",
    "flag": "🇲🇽",
    "code": "MX",
    "dial_code": "+52"
  },
  {
    "name": "Micronesia",
    "flag": "🇫🇲",
    "code": "FM",
    "dial_code": "+691"
  },
  {
    "name": "Moldova",
    "flag": "🇲🇩",
    "code": "MD",
    "dial_code": "+373"
  },
  {
    "name": "Monaco",
    "flag": "🇲🇨",
    "code": "MC",
    "dial_code": "+377"
  },
  {
    "name": "Mongolia",
    "flag": "🇲🇳",
    "code": "MN",
    "dial_code": "+976"
  },
  {
    "name": "Montenegro",
    "flag": "🇲🇪",
    "code": "ME",
    "dial_code": "+382"
  },
  {
    "name": "Montserrat",
    "flag": "🇲🇸",
    "code": "MS",
    "dial_code": "+1664"
  },
  {
    "name": "Morocco",
    "flag": "🇲🇦",
    "code": "MA",
    "dial_code": "+212"
  },
  {
    "name": "Mozambique",
    "flag": "🇲🇿",
    "code": "MZ",
    "dial_code": "+258"
  },
  {
    "name": "Myanmar",
    "flag": "🇲🇲",
    "code": "MM",
    "dial_code": "+95"
  },
  {
    "name": "Namibia",
    "flag": "🇳🇦",
    "code": "NA",
    "dial_code": "+264"
  },
  {
    "name": "Nauru",
    "flag": "🇳🇷",
    "code": "NR",
    "dial_code": "+674"
  },
  {
    "name": "Nepal",
    "flag": "🇳🇵",
    "code": "NP",
    "dial_code": "+977"
  },
  {
    "name": "Netherlands",
    "flag": "🇳🇱",
    "code": "NL",
    "dial_code": "+31"
  },
  {
    "name": "New Caledonia",
    "flag": "🇳🇨",
    "code": "NC",
    "dial_code": "+687"
  },
  {
    "name": "New Zealand",
    "flag": "🇳🇿",
    "code": "NZ",
    "dial_code": "+64"
  },
  {
    "name": "Nicaragua",
    "flag": "🇳🇮",
    "code": "NI",
    "dial_code": "+505"
  },
  {
    "name": "Niger",
    "flag": "🇳🇪",
    "code": "NE",
    "dial_code": "+227"
  },
  {
    "name": "Nigeria",
    "flag": "🇳🇬",
    "code": "NG",
    "dial_code": "+234"
  },
  {
    "name": "Niue",
    "flag": "🇳🇺",
    "code": "NU",
    "dial_code": "+683"
  },
  {
    "name": "Norfolk Island",
    "flag": "🇳🇫",
    "code": "NF",
    "dial_code": "+672"
  },
  {
    "name": "North Korea",
    "flag": "🇰🇵",
    "code": "KP",
    "dial_code": "+850"
  },
  {
    "name": "Northern Mariana Islands",
    "flag": "🇲🇵",
    "code": "MP",
    "dial_code": "+1670"
  },
  {
    "name": "Norway",
    "flag": "🇳🇴",
    "code": "NO",
    "dial_code": "+47"
  },
  {
    "name": "Oman",
    "flag": "🇴🇲",
    "code": "OM",
    "dial_code": "+968"
  },
  {
    "name": "Pakistan",
    "flag": "🇵🇰",
    "code": "PK",
    "dial_code": "+92"
  },
  {
    "name": "Palau",
    "flag": "🇵🇼",
    "code": "PW",
    "dial_code": "+680"
  },
  {
    "name": "Palestine",
    "flag": "🇵🇸",
    "code": "PS",
    "dial_code": "+970"
  },
  {
    "name": "Panama",
    "flag": "🇵🇦",
    "code": "PA",
    "dial_code": "+507"
  },
  {
    "name": "Papua New Guinea",
    "flag": "🇵🇬",
    "code": "PG",
    "dial_code": "+675"
  },
  {
    "name": "Paraguay",
    "flag": "🇵🇾",
    "code": "PY",
    "dial_code": "+595"
  },
  {
    "name": "Peru",
    "flag": "🇵🇪",
    "code": "PE",
    "dial_code": "+51"
  },
  {
    "name": "Philippines",
    "flag": "🇵🇭",
    "code": "PH",
    "dial_code": "+63"
  },
  {
    "name": "Poland",
    "flag": "🇵🇱",
    "code": "PL",
    "dial_code": "+48"
  },
  {
    "name": "Portugal",
    "flag": "🇵🇹",
    "code": "PT",
    "dial_code": "+351"
  },
  {
    "name": "Puerto Rico",
    "flag": "🇵🇷",
    "code": "PR",
    "dial_code": "+1939"
  },
  {
    "name": "Qatar",
    "flag": "🇶🇦",
    "code": "QA",
    "dial_code": "+974"
  },
  {
    "name": "Reunion",
    "flag": "🇷🇪",
    "code": "RE",
    "dial_code": "+262"
  },
  {
    "name": "Romania",
    "flag": "🇷🇴",
    "code": "RO",
    "dial_code": "+40"
  },
  {
    "name": "Russia",
    "flag": "🇷🇺",
    "code": "RU",
    "dial_code": "+7"
  },
  {
    "name": "Rwanda",
    "flag": "🇷🇼",
    "code": "RW",
    "dial_code": "+250"
  },
  {
    "name": "Saint Helena",
    "flag": "🇸🇭",
    "code": "SH",
    "dial_code": "+290"
  },
  {
    "name": "Saint Kitts & Nevis",
    "flag": "🇰🇳",
    "code": "KN",
    "dial_code": "+1869"
  },
  {
    "name": "Saint Lucia",
    "flag": "🇱🇨",
    "code": "LC",
    "dial_code": "+1758"
  },
  {
    "name": "Saint Pierre & Miquelon",
    "flag": "🇵🇲",
    "code": "PM",
    "dial_code": "+508"
  },
  {
    "name": "Saint Vincent & the Grenadines",
    "flag": "🇻🇨",
    "code": "VC",
    "dial_code": "+1784"
  },
  {
    "name": "Samoa",
    "flag": "🇼🇸",
    "code": "WS",
    "dial_code": "+685"
  },
  {
    "name": "San Marino",
    "flag": "🇸🇲",
    "code": "SM",
    "dial_code": "+378"
  },
  {
    "name": "Sao Tome & Principe",
    "flag": "🇸🇹",
    "code": "ST",
    "dial_code": "+239"
  },
  {
    "name": "Saudi Arabia",
    "flag": "🇸🇦",
    "code": "SA",
    "dial_code": "+966"
  },
  {
    "name": "Senegal",
    "flag": "🇸🇳",
    "code": "SN",
    "dial_code": "+221"
  },
  {
    "name": "Serbia",
    "flag": "🇷🇸",
    "code": "RS",
    "dial_code": "+381"
  },
  {
    "name": "Seychelles",
    "flag": "🇸🇨",
    "code": "SC",
    "dial_code": "+248"
  },
  {
    "name": "Sierra Leone",
    "flag": "🇸🇱",
    "code": "SL",
    "dial_code": "+232"
  },
  {
    "name": "Singapore",
    "flag": "🇸🇬",
    "code": "SG",
    "dial_code": "+65"
  },
  {
    "name": "Slovakia",
    "flag": "🇸🇰",
    "code": "SK",
    "dial_code": "+421"
  },
  {
    "name": "Slovenia",
    "flag": "🇸🇮",
    "code": "SI",
    "dial_code": "+386"
  },
  {
    "name": "Solomon Islands",
    "flag": "🇸🇧",
    "code": "SB",
    "dial_code": "+677"
  },
  {
    "name": "Somalia",
    "flag": "🇸🇴",
    "code": "SO",
    "dial_code": "+252"
  },
  {
    "name": "South Africa",
    "flag": "🇿🇦",
    "code": "ZA",
    "dial_code": "+27"
  },
  {
    "name": "South Korea",
    "flag": "🇰🇷",
    "code": "KR",
    "dial_code": "+82"
  },
  {
    "name": "South Sudan",
    "flag": "🇸🇸",
    "code": "SS",
    "dial_code": "+211"
  },
  {
    "name": "Spain",
    "flag": "🇪🇸",
    "code": "ES",
    "dial_code": "+34"
  },
  {
    "name": "Sri Lanka",
    "flag": "🇱🇰",
    "code": "LK",
    "dial_code": "+94"
  },
  {
    "name": "Sudan",
    "flag": "🇸🇩",
    "code": "SD",
    "dial_code": "+249"
  },
  {
    "name": "Suriname",
    "flag": "🇸🇷",
    "code": "SR",
    "dial_code": "+597"
  },
  {
    "name": "Sweden",
    "flag": "🇸🇪",
    "code": "SE",
    "dial_code": "+46"
  },
  {
    "name": "Switzerland",
    "flag": "🇨🇭",
    "code": "CH",
    "dial_code": "+41"
  },
  {
    "name": "Syria",
    "flag": "🇸🇾",
    "code": "SY",
    "dial_code": "+963"
  },
  {
    "name": "Taiwan",
    "flag": "🇹🇼",
    "code": "TW",
    "dial_code": "+886"
  },
  {
    "name": "Tajikistan",
    "flag": "🇹🇯",
    "code": "TJ",
    "dial_code": "+992"
  },
  {
    "name": "Tanzania",
    "flag": "🇹🇿",
    "code": "TZ",
    "dial_code": "+255"
  },
  {
    "name": "Thailand",
    "flag": "🇹🇭",
    "code": "TH",
    "dial_code": "+66"
  },
  {
    "name": "Timor-Leste",
    "flag": "🇹🇱",
    "code": "TL",
    "dial_code": "+670"
  },
  {
    "name": "Togo",
    "flag": "🇹🇬",
    "code": "TG",
    "dial_code": "+228"
  },
  {
    "name": "Tokelau",
    "flag": "🇹🇰",
    "code": "TK",
    "dial_code": "+690"
  },
  {
    "name": "Tonga",
    "flag": "🇹🇴",
    "code": "TO",
    "dial_code": "+676"
  },
  {
    "name": "Trinidad & Tobago",
    "flag": "🇹🇹",
    "code": "TT",
    "dial_code": "+1868"
  },
  {
    "name": "Tunisia",
    "flag": "🇹🇳",
    "code": "TN",
    "dial_code": "+216"
  },
  {
    "name": "Turkey",
    "flag": "🇹🇷",
    "code": "TR",
    "dial_code": "+90"
  },
  {
    "name": "Turkmenistan",
    "flag": "🇹🇲",
    "code": "TM",
    "dial_code": "+993"
  },
  {
    "name": "Turks & Caicos Islands",
    "flag": "🇹🇨",
    "code": "TC",
    "dial_code": "+1649"
  },
  {
    "name": "Tuvalu",
    "flag": "🇹🇻",
    "code": "TV",
    "dial_code": "+688"
  },
  {
    "name": "USA",
    "flag": "🇺🇸",
    "code": "US",
    "dial_code": "+1"
  },
  {
    "name": "Uganda",
    "flag": "🇺🇬",
    "code": "UG",
    "dial_code": "+256"
  },
  {
    "name": "Ukraine",
    "flag": "🇺🇦",
    "code": "UA",
    "dial_code": "+380"
  },
  {
    "name": "United Arab Emirates",
    "flag": "🇦🇪",
    "code": "AE",
    "dial_code": "+971"
  },
  {
    "name": "United Kingdom",
    "flag": "🇬🇧",
    "code": "GB",
    "dial_code": "+44"
  },
  {
    "name": "Uruguay",
    "flag": "🇺🇾",
    "code": "UY",
    "dial_code": "+598"
  },
  {
    "name": "Uzbekistan",
    "flag": "🇺🇿",
    "code": "UZ",
    "dial_code": "+998"
  },
  {
    "name": "Vanuatu",
    "flag": "🇻🇺",
    "code": "VU",
    "dial_code": "+678"
  },
  {
    "name": "Venezuela",
    "flag": "🇻🇪",
    "code": "VE",
    "dial_code": "+58"
  },
  {
    "name": "Vietnam",
    "flag": "🇻🇳",
    "code": "VN",
    "dial_code": "+84"
  },
  {
    "name": "Virgin Islands, British",
    "flag": "🇻🇬",
    "code": "VG",
    "dial_code": "+1284"
  },
  {
    "name": "Virgin Islands, U.S.",
    "flag": "🇻🇮",
    "code": "VI",
    "dial_code": "+1340"
  },
  {
    "name": "Wallis & Futuna",
    "flag": "🇼🇫",
    "code": "WF",
    "dial_code": "+681"
  },
  {
    "name": "Yemen",
    "flag": "🇾🇪",
    "code": "YE",
    "dial_code": "+967"
  },
  {
    "name": "Zambia",
    "flag": "🇿🇲",
    "code": "ZM",
    "dial_code": "+260"
  },
  {
    "name": "Zimbabwe",
    "flag": "🇿🇼",
    "code": "ZW",
    "dial_code": "+263"
  }
]
"""
}
