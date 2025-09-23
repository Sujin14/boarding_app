# Flutter Assignment

A Flutter application implementing a home screen and a notifications screen based on Figma designs. The app fetches and displays JSON data from an API endpoint, uses isolates for efficient JSON parsing, and includes state management with the Provider package. The project follows a modular structure.

---

## Features

### Home Screen
- Location display  
- Search bar with navigation to notifications  
- Quick action grid for categories (e.g., Food Delivery, Medicines)  
- Top picks and craze deals banners  
- Trending and nearby stores sections  
- Refer & Earn card  
- View all stores button  

### Notifications Screen
- Fetches and displays notifications from an API  
- Includes loading states, error handling, and a retry mechanism  

### Other Highlights
- **JSON Parsing with Isolates**: Improves performance by parsing JSON in a separate thread  
- **State Management**: Provider package for managing and updating notification data  
- **Routing**: Navigation between home and notifications screens using Flutter’s Navigator  
- **Custom Styling**: Google Fonts (Quicksand, Poppins, Roboto) and a custom color palette (AppColors) to match Figma designs  

---

## Setup Instructions

### Prerequisites
- **Flutter SDK**: 3.0.0 or higher  
- **Dart**: 2.17.0 or higher  
- **IDE**: Android Studio, VS Code, or any IDE with Flutter support  
- **Git**: For cloning the repository  

### Steps
1. **Clone the Repository**  
   ```bash
   git clone <repository-url>
   cd <repository-directory>

2. **Install Dependencies**  
   flutter pub get

3. **Add Assets**
    Place the assets folder (containing images and SVGs) in the project root

    Ensure pubspec.yaml includes:

    flutter:
     assets:
        - assets/images/


4. **Run the App**

    flutter run

5. **Dependencies**
    flutter_svg: ^2.0.7 – Render SVG icons
    http: ^1.1.0 – Handle API requests
    provider: ^6.0.5 – State management
    google_fonts: ^6.1.0 – Custom typography

6. **Project Structure**
    lib/
    ├── constants/
    │   └── app_colors.dart              # Custom color palette
    ├── models/
    │   └── notification_model.dart      # Data model for notifications
    ├── providers/
    │   └── notification_provider.dart   # State management for notifications
    ├── screens/
    │   ├── home_screen.dart             # Home screen implementation
    │   └── notifications_screen.dart    # Notifications screen implementation
    ├── services/
    │   ├── api_service.dart             # Handles API requests
    │   └── json_parser.dart             # JSON parsing with isolates
    ├── widgets/
    │   ├── craze_deals_banner.dart      # Banner for craze deals
    │   ├── location_row.dart            # Location display widget
    │   ├── nearby_stores_list.dart      # List of nearby stores
    │   ├── notification_body.dart       # Notifications screen body
    │   ├── notification_item.dart       # Individual notification item
    │   ├── quick_action_grid.dart       # Grid for quick actions
    │   ├── refer_earn_card.dart         # Refer & Earn card
    │   ├── search_bar.dart              # Search bar with notification navigation
    │   ├── top_picks_banner.dart        # Top picks banner
    │   ├── trending_section.dart        # Trending stores section
    │   └── view_all_stores_button.dart  # Button to view all stores
    ├── main.dart                        # App entry point
    assets/
    └── images/                          # Images and SVGs

7. **API Integration**

    The app fetches notification data from:

    https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json


    ApiService: Makes HTTP requests using http

    JsonParser: Uses isolates for efficient JSON parsing

    NotificationModel: Defines notification data structure with fromJson