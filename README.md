# FlutterUnityWidgets

A collection of **Unity Editor–style UI widgets built purely in Flutter**.
This package is **UI-only** and **does NOT connect to Unity**. It simply mimics the look and feel of Unity’s Inspector panels and controls.

---

## ✨ Features

* Unity‑style **Panel (Inspector)**
* Custom **Button** and **Icon Button**
* Styled **Text Field**
* Unity‑like **Slider**
* Toggle / Switch control
* Supports **Dark & Light theme** automatically
* Clean, reusable, and modular widget structure

---
## ✨ Preview
![screen-20260116-1625572](https://github.com/user-attachments/assets/8500acd6-2107-4a71-9e57-8cd07a89caa1)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_unity_widgets:
    path: ../flutter_unity_widgets  # For local development
```
from git:
```
dependencies:
  flutter_unity_widgets:
    git:
      url: https://github.com/yourusername/flutter_unity_widgets.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---

## 📁 Folder Structure

```text
lib/
├── widgets/
│   ├── unity_button.dart
│   ├── unity_icon_button.dart
│   ├── unity_panel.dart
│   ├── unity_slider.dart
│   ├── unity_text_field.dart
│   └── unity_toggle.dart
│
├── home_screen.dart
└── main.dart
```

---

## 🚀 Getting Started

### 1️⃣ Import Widgets

```dart
import 'package:flutter_unity_widgets/widgets/unity_button.dart';
import 'package:flutter_unity_widgets/widgets/unity_icon_button.dart';
import 'package:flutter_unity_widgets/widgets/unity_panel.dart';
import 'package:flutter_unity_widgets/widgets/unity_slider.dart';
import 'package:flutter_unity_widgets/widgets/unity_text_field.dart';
import 'package:flutter_unity_widgets/widgets/unity_toggle.dart';
```

---

## 🧩 Usage Examples

### 🔲 Unity Panel

```dart
UnityPanel(
  title: 'Inspector',
  child: Column(
    children: [
      Text('Your widgets here'),
    ],
  ),
)
```

---

### 🔘 Unity Button

```dart
UnityButton(
  text: 'Apply',
  onPressed: () {},
)
```

With Icon:

```dart
UnityButton(
  text: 'Save',
  icon: Icons.save,
  onPressed: () {},
)
```

---

### 🎯 Unity Icon Button

```dart
UnityIconButton(
  icon: Icons.home,
  size: 40,
  onPressed: () {},
)
```

---

### 📝 Unity Text Field

```dart
UnityTextField(
  controller: textController,
  label: 'Name',
  hint: 'Enter name',
)
```

---

### 🎚 Unity Slider

```dart
UnitySlider(
  label: 'Intensity',
  value: sliderValue,
  onChanged: (val) => setState(() => sliderValue = val),
)
```

---

### 🔀 Unity Toggle

```dart
UnityToggle(
  label: 'Enabled',
  value: isEnabled,
  onChanged: (val) => setState(() => isEnabled = val),
)
```

---

## 🖥 Example Screen (HomeScreen)

The `HomeScreen` demonstrates a Unity‑style Inspector UI with:

* Text input
* Toggle
* Slider
* Apply button
* Icon button

This screen combines all widgets into a single panel.

---

## 🎨 Theme Support

All widgets automatically adapt to:

* 🌙 Dark Theme
* ☀️ Light Theme

Based on:

```dart
Theme.of(context).brightness
```

---

## ❌ What This Package Is NOT

* ❌ No Unity Engine integration
* ❌ No MethodChannel or Unity View
* ❌ No 3D rendering

This is **UI‑only** and meant for:

* Unity‑style Flutter apps
* Game editor UIs
* Tool dashboards
* Inspector‑like panels

---

## 📄 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---

