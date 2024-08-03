//
//  CountryCodeSheet_ListView.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-07-15.
//

import SwiftUI

struct CountryCodeSheet_ListView: View {
    // MARK: - PROPERTIES
    @Environment(CountryCodeSheetViewModel.self) private var vm
    
    @Binding private var selectedCountryCode: CountryModel?
    @Binding private var isPresented: Bool
    
    // MARK: - INITIALIZER
    init(selectedCountryCode: Binding<CountryModel?>, isPresented: Binding<Bool>) {
        _selectedCountryCode = selectedCountryCode
        _isPresented = isPresented
    }
    
    // MARK: - BODY
    var body: some View {
        List {
            ForEach(vm.arrayByAlphabet, id: \.0) { char, phoneNumbersArray in
                Section(char?.description ?? "") {
                    CountryCodeSheet_ListRowView(
                        selectedCountryCode: $selectedCountryCode,
                        isPresented: $isPresented,
                        phoneNumbersArray: phoneNumbersArray
                    )
                }
            }
        }
    }
}

// MARK: - PREVIEWS
#Preview("CountryCodeSheet_ListView") {
    @Previewable @State var selectedCountryCode: CountryModel?
    CountryCodeSheet_ListView(
        selectedCountryCode: $selectedCountryCode,
        isPresented: .constant(false)
    )
    .environment(CountryCodeSheetViewModel())
}
