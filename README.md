# Country Code Sheet SwiftUI 🔍 🌏 📋

`country-code-sheet-swiftui` is a SwiftUI package designed to provide a customizable and user-friendly interface for selecting country codes. It integrates seamlessly with your existing SwiftUI projects, offering a sheet-based view for country code selection with built-in search functionality.

## ✨ Features

- **Sheet Presentation**: Display a modal sheet for selecting country codes.
- **Searchable List**: Easily search through country codes with the integrated `SearchBarSwiftUI`.
- **Customizable**: Adapt the UI to fit your design needs.

|Dark Mode|Light Mode|
|-|-|
|<img src='https://github.com/KDTechniques/country-code-sheet-swiftui/blob/main/readme_images/CountryCodeSheet_Dark.png?raw=true'>|<img src='https://github.com/KDTechniques/country-code-sheet-swiftui/blob/main/readme_images/CountryCodeSheet_Light.png?raw=true'>|

## 🧑🏻‍💻 Requirements
- Swift 6.0 or later
- iOS 17 or later

## 🛠️ Installation

To install `CountryCodeSheetSwiftUI`, add the following to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/KDTechniques/country-code-sheet-swiftui.git", from: "1.0.0")
```

## 📖 Usage
Here's how to use CountryCodeSheetView in your SwiftUI project:

Initializer

```ruby
public init(isPresented: Binding<Bool>, selectedCountryCode: Binding<CountryModel?>)
```

```swift
import SwiftUI
import CountryCodeSheetSwiftUI

struct ContentView: View {
    @State private var isSheetPresented = false
    @State private var selectedCountryCode: CountryModel?

    var body: some View {
        Button("Select Country Code") {
            isSheetPresented.toggle()
        }
        .sheet(isPresented: $isSheetPresented) {
            CountryCodeSheetView(isPresented: $isSheetPresented, selectedCountryCode: $selectedCountryCode)
                .presentationDragIndicator(.visible)
        }
    }
}
```

## 📜 License
This package is licensed under the MIT License. See the [LICENSE](https://github.com/KDTechniques/country-code-sheet-swiftui/blob/main/LICENSE) file for more details.

## 🤝 Contribution
Feel free to contribute to the project by submitting issues or pull requests!
