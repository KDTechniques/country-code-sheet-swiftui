//
//  CountryCodeSheetView.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-01-14.
//

import SwiftUI
import SearchBarSwiftUI

public struct CountryCodeSheetView: View {
    // MARK: - PROPERTIES
    @Binding private var isPresented: Bool
    @Binding private var selectedCountryCode: CountryModel?
    
    // MARK: - PRIVATE PROPERTIES
    @State private var vm: CountryCodeSheetViewModel = .init()
    
    // MARK: - INITILIZER
    public init(isPresented: Binding<Bool>, selectedCountryCode: Binding<CountryModel?>) {
        _isPresented            = isPresented
        _selectedCountryCode    = selectedCountryCode
    }
    
    // MARK: - BODY
    public var body: some View {
        VStack(spacing: 20) {
            SearchBarView(
                searchBarText: $vm.searchText,
                placeholder: "Your country",
                context: .sheet,
                customColors: nil
            )
            
            CountryCodeSheet_ListBuilderView(
                selectedCountryCode: $selectedCountryCode,
                isPresented: $isPresented
            )
        }
        .padding(.top, 20)
        .environment(vm)
    }
}

// MARK: - PREVIEWS
#Preview("CountryCodeSheetView") {
    @Previewable @State var selectedCountryCode: CountryModel?
    Color.clear
        .sheet(isPresented: .constant(true)) {
            CountryCodeSheetView(
                isPresented: .constant(true),
                selectedCountryCode: $selectedCountryCode
            )
            .presentationDragIndicator(.visible)
        }
}
