# SocialTwitter-VIPER

A SwiftUI implementation of a social post creation and display system following VIPER architecture.
![Simulator Screenshot - iPhone SE (3rd generation) - 2025-04-05 at 07 14 10](https://github.com/user-attachments/assets/459700a8-0a06-4c0e-a340-5a0070d43ae3)
![Simulator Screenshot - iPhone SE (3rd generation) - 2025-04-05 at 07 14 14](https://github.com/user-attachments/assets/21b35842-d645-487d-9430-9d0a5d0a09ca)

## Features
- **Users**: Choose between 3 dummy users via dropdown
- **Post Creation**: 
  - Create posts with texts and image.
  - Attach images from a selection
  - Submit new posts

- **Post Feed**: 
  - Chronologically sorted posts
  - User profile images and metadata
  - Smooth scrolling

## Technical Implementation
### Framework
- SwiftUI

### Architecture
**VIPER** pattern followed:
- **View**: Passive SwiftUI components
- **Interactor**: Business logic & data operations
- **Presenter**: Mediates View-Interactor communication
- **Entity**: Data models (User, Post)
- **Router**: Navigation handling

### Key Components
- `PostListView`: Main feed display
- `CreatePostView`: Post composition screen
- `LocalPostStorage`: In-memory data persistence
- `UserSelectionView`: User switching dropdown
