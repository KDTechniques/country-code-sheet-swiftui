//
//  CountryCodeSheetViewModel.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-08-02.
//

import SwiftUI
import Combine
import Algorithms

@Observable final class CountryCodeSheetViewModel {
    // MARK: - PROPERTIES
    enum CountryCodeSearchStateTypes { case defaultArray, filteredArray, noResults }
    var cancellables = Set<AnyCancellable>()
    
    var searchText: String = "" { didSet { searchText$ = searchText } }
    @ObservationIgnored
    @Published var searchText$: String = ""
    
    var filteredCountryCodePhoneNumbersArray: [CountryModel] = []
    var state: CountryCodeSearchStateTypes = .defaultArray
    let countryCodePhoneNumbersArray: [CountryModel] = CountryModel
        .getCountryPhoneNumbersArray()?
        .sorted(by: { $0.name < $1.name }) ?? [] // A - Z
    
    private var defaultArray: [(String.Element?, Array<CountryModel>.SubSequence)] {
        // Chunks on the First Character of the Name for Section Headers
        countryCodePhoneNumbersArray.chunked(on: \.name.first)
    }
    
    var arrayByAlphabet: [(String.Element?, Array<CountryModel>.SubSequence)] {
        switch state {
        case .defaultArray: // when text is empty
            return defaultArray
            
        case .filteredArray: // when text is NOT empty && contains matches
            return filteredCountryCodePhoneNumbersArray.chunked(on: \.name.first)
            
        default: // when text is NOT empty BUT NO matches
            return []
        }
    }
    
    // MARK: - INITIALIZER
    public init() {
        searchTextSubscriber()
    }
    
    // MARK: - FUNCTIONS
    
    // MARK: - searchTextSubscriber
    private func searchTextSubscriber() {
        $searchText$
            .removeDuplicates() // Prevent infinite loop
            .sink { [weak self] text in
                guard let self = self else { return }
                
                searchText = text /// .removeDuplicates() prevents infinite loop here.
                filterResults(text: text)
            }
            .store (in: &cancellables)
    }
    
    // MARK: - filterResults
    private func filterResults(text: String) {
        guard !text.isEmpty else {
            // Following get executed if the text IS empty
            filteredCountryCodePhoneNumbersArray = []
            state = .defaultArray
            
            return
        }
        
        // Following get executed if the text is NOT empty
        let uppercasedText = text.uppercased()
        let tempFilteredArray: [CountryModel] = countryCodePhoneNumbersArray.filter {
            $0.name.uppercased().contains(uppercasedText) ||
            $0.dialCode.contains(text) ||
            $0.countryCode.contains(uppercasedText) // country code is uppercased in json string
        }
        
        withAnimation {
            filteredCountryCodePhoneNumbersArray = tempFilteredArray
        }
        
        state = tempFilteredArray.isEmpty ? .noResults : .filteredArray
    }
}
