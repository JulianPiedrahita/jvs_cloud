# JVS Cloud - IaC & Cloud Management Platform

A comprehensive Flutter application for Infrastructure as Code (IaC) and Cloud Management, built with clean architecture principles, advanced security features, and a modern design system based on vibrant brand colors.

## 🚀 Features

### 🔐 Security & Authentication
- **Secure Authentication** with JWT tokens and refresh token mechanism
- **Biometric Authentication** support (Face ID/Touch ID/Fingerprint)
- **OWASP Security Standards** compliance (Level 2/3)
- **Secure Storage** for sensitive data using encrypted local storage
- **Rate limiting** and brute force protection
- **Session management** with automatic token refresh

### 🏗️ Architecture
- **Clean Architecture** with separation of concerns
- **Domain-driven design** with entities, repositories, and use cases
- **BLoC/Cubit** state management pattern
- **Dependency Injection** using GetIt and Injectable
- **Repository Pattern** for data access abstraction
- **Error Handling** with Either pattern (Dartz)

### 🎨 Design System
- **Vibrant Color Palette** extracted from brand logo
- **Material Design 3** components
- **Responsive Design** for web and mobile platforms
- **Dark/Light Theme** support
- **Custom Gradient Backgrounds** and animations
- **Typography System** with Google Fonts integration

### 🌐 Platform Support
- **Flutter Web** - Responsive dashboard experience
- **iOS Mobile** - Native mobile experience with biometric auth
- **Android Mobile** - Native mobile experience with biometric auth
- **Internationalization** (English/Spanish) support

### ☁️ Cloud Management Features
- **IaC Resources Management**
  - Terraform templates and examples
  - CloudFormation stacks and resources
  - Azure Bicep templates
  - Pulumi configurations
- **Multi-Cloud Provider Support**
  - Amazon Web Services (AWS)
  - Google Cloud Platform (GCP)
  - Microsoft Azure
- **Code Templates** and downloadable examples
- **Best Practices** guides and tutorials

## 🛠️ Technical Stack

### Frontend
- **Flutter 3.x** - Cross-platform framework
- **Dart 3.x** - Programming language
- **BLoC 8.x** - State management
- **GoRouter** - Navigation and routing
- **Dio** - HTTP client with interceptors
- **Freezed** - Code generation for data classes

### Security
- **flutter_secure_storage** - Encrypted local storage
- **local_auth** - Biometric authentication
- **crypto** - Cryptographic operations
- **JWT** tokens with secure refresh mechanism

### UI/UX
- **flutter_screenutil** - Responsive design
- **google_fonts** - Typography
- **lottie** - Animations
- **cached_network_image** - Image caching
- **shimmer** - Loading states

### Development Tools
- **build_runner** - Code generation
- **injectable** - Dependency injection
- **freezed** - Immutable data classes
- **json_serializable** - JSON serialization

## 🏗️ Project Structure

```
lib/
├── core/                          # Core functionality
│   ├── constants/                 # App constants and configuration
│   ├── di/                       # Dependency injection setup
│   ├── error/                    # Error handling and failures
│   ├── network/                  # Network layer (Dio client)
│   ├── router/                   # App routing configuration
│   ├── security/                 # Security services (biometric)
│   ├── storage/                  # Storage services (secure storage)
│   ├── theme/                    # App theme and design system
│   └── usecases/                 # Base use case classes
├── features/                      # Feature modules
│   ├── auth/                     # Authentication feature
│   │   ├── data/                 # Data layer (models, repositories)
│   │   ├── domain/               # Domain layer (entities, use cases)
│   │   └── presentation/         # Presentation layer (BLoC, pages)
│   ├── dashboard/                # Dashboard feature
│   ├── iac_resources/            # IaC resources management
│   ├── cloud_providers/          # Cloud providers module
│   └── profile/                  # User profile management
└── main.dart                     # App entry point
```

## 🚀 Getting Started

### Prerequisites
- Flutter 3.x installed
- Dart 3.x installed
- IDE (VS Code/Android Studio) with Flutter plugins

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd jvs_cloud
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   dart run build_runner build
   ```

4. **Run the application**
   ```bash
   # For web
   flutter run -d chrome
   
   # For mobile (iOS/Android)
   flutter run
   ```

### Build for Production

```bash
# Web
flutter build web --release

# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## 🔧 Configuration

### Environment Setup
1. Configure API base URL in `lib/core/constants/app_constants.dart`
2. Set up authentication endpoints
3. Configure cloud provider API keys (if needed)

### Security Configuration
- Biometric authentication is enabled by default
- Secure storage uses device keychain/keystore
- JWT tokens are automatically managed
- Rate limiting is configured for API calls

## 🎨 Design System

### Color Palette
The app uses a vibrant color system extracted from the brand logo:
- **Primary Blue** (#2196F3) - Main brand color
- **Primary Purple** (#9C27B0) - Secondary brand color
- **Primary Orange** (#FF9800) - Accent color
- **Primary Yellow** (#FFC107) - Warning/highlight color
- **Primary Red/Pink** (#E91E63) - Error/attention color

### Typography
- **Google Fonts** integration
- **Responsive text scaling**
- **Semantic text styles** (headlines, body, captions)

### Components
- **Custom buttons** with gradient backgrounds
- **Form fields** with validation
- **Cards** with elevation and shadows
- **Navigation** with smooth transitions

## 📱 Features by Platform

### Web Dashboard
- **Responsive layout** for desktop/tablet
- **Interactive widgets** and charts
- **Advanced search** and filtering
- **Code syntax highlighting**
- **Downloadable templates**

### Mobile App
- **Native navigation** patterns
- **Biometric authentication**
- **Offline content** access
- **Push notifications** (planned)
- **Favorites** and bookmarks

## 🔐 Security Features

### Authentication
- **Multi-factor authentication** options
- **Biometric authentication** (Face ID/Touch ID/Fingerprint)
- **Social login** support (Google, Apple, Microsoft)
- **Enterprise SSO** support (planned)

### Data Protection
- **End-to-end encryption** for sensitive data
- **Secure storage** using device keychain
- **Token rotation** and automatic refresh
- **Session timeout** protection

### OWASP Compliance
- **Input validation** and sanitization
- **SQL injection** prevention
- **XSS protection**
- **CSRF protection**
- **Secure headers** implementation

## 🌟 Roadmap

### Phase 1 (Current)
- ✅ Authentication system
- ✅ Basic dashboard
- ✅ IaC resources structure
- ✅ Security implementation

### Phase 2 (Planned)
- 📝 Advanced dashboard widgets
- 📝 Interactive code editor
- 📝 Real-time collaboration
- 📝 Advanced search

### Phase 3 (Future)
- 📝 AI-powered suggestions
- 📝 Cost optimization tools
- 📝 Monitoring integration
- 📝 Team management

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `flutter test`
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Support

For support, email support@jvscloud.com or create an issue in the repository.

---

**JVS Cloud** - Simplifying Infrastructure as Code and Cloud Management 🚀