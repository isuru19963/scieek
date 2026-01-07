# Quick Start Guide - Profile Page

## Testing the Profile Page

### Option 1: Test Profile Page Directly (Quickest)

1. Temporarily update your `main.dart` to use the profile page:

```dart
import 'package:flutter/material.dart';
import 'screens/main/profile/profile.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scieek',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ProfilePage(),
    );
  }
}
```

2. Run the app:
```bash
flutter run
```

### Option 2: Run the Test File

You can also run the test file directly:

```bash
flutter run -t lib/main_profile_test.dart
```

## Features You Can Test

1. **Profile Image Selection**
   - Tap the camera icon on the profile image
   - Select an image from your gallery
   - The image will update

2. **Dark Mode Toggle**
   - Tap the toggle switch next to "Switch to Dark Mode ?"
   - The toggle will animate (theme changes not implemented yet)

3. **Password Visibility**
   - Tap the eye icon in the password field
   - Password will toggle between visible and hidden

4. **Bottom Navigation**
   - Tap different navigation items
   - Profile tab should be highlighted in blue

5. **Scrolling**
   - Scroll the page up and down
   - All content should be accessible

## Expected Appearance

The profile page should match the design with:
- ✅ Blue gradient header with "My Profile" title
- ✅ Notification bell and menu icons
- ✅ Circular profile image with camera icon
- ✅ User name "Sofia Mathew"
- ✅ Two blue gradient cards showing statistics
- ✅ Dark mode toggle switch
- ✅ Four profile information fields (name, email, phone, password)
- ✅ Blue "Edit" button
- ✅ White "Log out" button
- ✅ Bottom navigation bar with Profile tab active

## Troubleshooting

### If the profile image doesn't show:
The app uses a placeholder that shows a person icon. This is normal if you haven't added a `profile_placeholder.png` image.

### If you get permission errors when selecting images:
Make sure your iOS/Android permissions are configured:

**iOS (ios/Runner/Info.plist):**
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>We need access to your photo library to update your profile picture</string>
<key>NSCameraUsageDescription</key>
<string>We need access to your camera to take a profile picture</string>
```

**Android (android/app/src/main/AndroidManifest.xml):**
```xml
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.CAMERA"/>
```

## Next Steps

1. Implement Edit Profile functionality
2. Connect to backend API for user data
3. Implement dark mode theme
4. Add logout functionality
5. Integrate with other pages (Home, Project, Watchlist)
