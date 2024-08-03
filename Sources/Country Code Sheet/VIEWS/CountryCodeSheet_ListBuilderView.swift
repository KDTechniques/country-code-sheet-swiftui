//
//  CountryCodeSheet_ListBuilderView.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-07-14.
//

import SwiftUI
import ContentUnavailableSwiftUI

struct CountryCodeSheet_ListBuilderView: View {
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
        Group {
            switch vm.state {
            case .noResults: noResultsText
            default: CountryCodeSheet_ListView(
                selectedCountryCode: $selectedCountryCode,
                isPresented: $isPresented
            )}
        }
        .listStyle(.plain)
    }
}

// MARK: - PREVIEWS
#Preview("CountryCodeSheet_ListBuilderView") {
    @Previewable @State var selectedCountryCode: CountryModel?
    Color.clear
        .sheet(isPresented: .constant(true)) {
            CountryCodeSheet_ListBuilderView(
                selectedCountryCode: $selectedCountryCode,
                isPresented: .constant(false)
            )
        }
        .environment(CountryCodeSheetViewModel())
}

// MARK: - EXTENSIONS
extension CountryCodeSheet_ListBuilderView {
    // MARK: - noResultsText
    private var noResultsText: some View {
        ContentUnavailableView(title: "No Results")
            .frame(maxHeight: .infinity)
    }
}
