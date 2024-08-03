//
//  CountryCodeSheet_ListRowItemView.swift
//  country-code-sheet-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-07-14.
//

import SwiftUI

struct CountryCodeSheet_ListRowItemView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) private var colorScheme
    
    @Binding private var selectedCountryCode: CountryModel?
    @Binding private var isPresented: Bool
    let item: CountryModel
    
    // MARK: - INITIALIZER
    init(
        selectedCountryCode: Binding<CountryModel?>,
        isPresented: Binding<Bool>,
        item: CountryModel
    ) {
        _selectedCountryCode = selectedCountryCode
        _isPresented = isPresented
        self.item = item
    }
    
    // MARK: - BODY
    var body: some View {
        HStack {
            TextView(item: item)
            Spacer()
            Image(systemName: "checkmark")
                .opacity(selectedCountryCode?.name == item.name ? 1 : 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorScheme == .dark
                    ? Color(uiColor: .systemGray6) /// default sheet color
                    : .white
        )
        .onTapGesture { onListRowTap(item: item) }
    }
}

// MARK: PREVIEWS
#Preview("CountryCodeSheet_ListRowItemView") {
    @Previewable @State var selectedCountryCode: CountryModel?
    CountryCodeSheet_ListRowItemView(
        selectedCountryCode: $selectedCountryCode,
        isPresented: .constant(false),
        item: .mockObject
    )
    .environment(CountryCodeSheetViewModel())
}

// MARK: - EXTENSIONS
extension CountryCodeSheet_ListRowItemView {
    // MARK: - FUNCTIONS
    
    // MARK: - onListRowTap
    private func onListRowTap(item: CountryModel) {
        selectedCountryCode = item
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { isPresented = false }
    }
}

// MARK: - SUBVIEWS

// MARK: - TextView
fileprivate struct TextView: View {
    // MARK: - PROPERTIES
    let item: CountryModel
    
    // MARK: - INITIALIZER
    init(item: CountryModel) {
        self.item = item
    }
    
    // MARK: - BODY
    var body: some View {
        Text("\(item.flag) \(item.name) (\(item.dialCode))")
    }
}
