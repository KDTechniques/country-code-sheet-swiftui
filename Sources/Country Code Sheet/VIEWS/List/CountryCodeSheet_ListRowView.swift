//
//  CountryCodeSheet_ListRowView.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-07-14.
//

import SwiftUI

struct CountryCodeSheet_ListRowView: View {
    // MARK: - PROPERTIES
    @Environment(CountryCodeSheetViewModel.self) private var vm
    
    @Binding private var selectedCountryCode: CountryModel?
    @Binding private var isPresented: Bool
    let phoneNumbersArray: Array<CountryModel>.SubSequence
    
    
    // MARK: - INITIALIZER
    init(
        selectedCountryCode: Binding<CountryModel?>,
        isPresented: Binding<Bool>,
        phoneNumbersArray: Array<CountryModel>.SubSequence
    ) {
        _selectedCountryCode = selectedCountryCode
        _isPresented = isPresented
        self.phoneNumbersArray = phoneNumbersArray
    }
    
    // MARK: - BODY
    var body: some View {
        ForEach(phoneNumbersArray) { item in
            CountryCodeSheet_ListRowItemView(
                selectedCountryCode: $selectedCountryCode,
                isPresented: $isPresented,
                item: item
            )
        }
    }
}

// MARK: - PREVIEWS
#Preview("CountryCodeSheet_ListRowView") {
    @Previewable @State var selectedCountryCode: CountryModel?
    ScrollView(.vertical) {
        CountryCodeSheet_ListRowView(
            selectedCountryCode: $selectedCountryCode,
            isPresented: .constant(false),
            phoneNumbersArray: CountryCodeSheetViewModel().arrayByAlphabet.first!.1
        )
    }
    .environment(CountryCodeSheetViewModel())
}
