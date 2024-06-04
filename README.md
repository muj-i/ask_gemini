# AskGemini

## Description
AskGemini is an interactive application designed to provide users with the ability to ask questions and receive answers through chat or image inputs. Leveraging the Gemini API, the app offers a robust solution for text-based queries and image descriptions, making information accessible in a user-friendly manner.

## Responsibilities
As the creator of AskGemini, my responsibilities included:

 - App Development: Developing and designing the AskGemini application, ensuring an intuitive user interface and seamless interaction.

 - API Integration: Integrating the Gemini API for both text and image input functionalities, enabling the app to handle various types of user queries.

 - Image Processing: Implementing the feature for users to upload images and receive descriptive responses from the Gemini API.

 - User Interface: Designing a responsive and aesthetically pleasing user interface that enhances user engagement and ease of use.

 - Error Handling: Ensuring robust error handling mechanisms to manage API errors and improve user experience.

## Challenges Faced
During the development of AskGemini, several challenges were encountered, including:

 - API Limitations: Navigating the constraints and limitations of the Gemini API to maximize functionality.

 - Image Recognition: Implementing efficient and accurate image recognition and description capabilities, especially when sending images from files and ensuring they are transmitted correctly to the Gemini API.

 - Text Parsing: Ensuring the application accurately understands and processes complex user queries.

## How Challenges Were Overcome
To address these challenges, several strategies and solutions were implemented:

 - API Utilization: Thoroughly studying the Gemini API documentation and utilizing advanced features to overcome initial limitations.

 - Optimization: Continuously handling images from files and ensuring they are correctly sent to the Gemini API for accurate descriptions.

AskGemini is an evolving project aimed at providing users with a reliable and interactive experience for both text and image-based queries. Your feedback and contributions are welcome. Thank you for considering AskGemini for your informational needs!


AskGemini UI

### Video demonstration of AskGemini

[Video](https://www.linkedin.com/posts/muj-i_just-created-a-new-app-called-askgemini-activity-7203906546500579328-_4ey/)


<div style="display: flex; flex-wrap: wrap;">
    <img src="https://raw.githubusercontent.com/muj-i/ask_gemini/main/screenshots/1.png" width="200" />
    <img src="https://raw.githubusercontent.com/muj-i/ask_gemini/main/screenshots/2.png" width="200" />
    <img src="https://raw.githubusercontent.com/muj-i/ask_gemini/main/screenshots/3.png" width="200" />
    <img src="https://raw.githubusercontent.com/muj-i/ask_gemini/main/screenshots/4.png" width="200" />
    </div>

## Getting Started

### Prerequisites

Ensure Flutter is installed on your machine. For installation instructions, refer to the official [Flutter website](https://flutter.dev/docs/get-started/install).

### Installation

Follow these steps to run the AskGemini Application:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/muj-i/ask_gemini.git
```

2. Navigate to the project folder:

```bash
cd ask_gemini
```

3. Install dependencies:

```bash
flutter pub get
```

4. Create an API key from Gemini API:

Visit the (Gemini API)[https://aistudio.google.com/app/apikey] to generate your API key.

5. Create a `.env` file at the root directory of the project:

In the `.env` file, add the following line, replacing `YOUR_API_KEY` with the API key you obtained from Gemini API:

```bash
GEMINIKEY=YOUR_API_KEY
```

### How to Run

Connect your device or emulator and run the app using the following command:

```bash
flutter run
```

## Dependencies

AskGemini integrates the following dependencies to enhance functionality:

- `get: 4.6.6`: State management library.
- `flutter`: The core Flutter SDK.
- `dash_chat_2: ^0.0.20`: For creating chat interfaces.
- `flutter_gemini: ^2.0.3`: For interacting with the Gemini API.
- `image_picker: ^1.0.7`: For picking images from the gallery or camera.
- `flutter_dotenv: ^5.1.0`: For loading environment variables from a .env file.

### Dev Dependencies

- `flutter_launcher_icons: ^0.13.1`: For generating and setting app icons.


## Project Directory Structure

The AskGemini directory structure is organized as follows:

```
 .
└── ask_gemini/
    ├── assets/
    │   └── icons/
    │       └── icon1.png
    ├── lib/
    │   ├── app/
    │   │   ├── modules/
    │   │   │   ├── home/
    │   │   │   │   ├── bindings/
    │   │   │   │   │   └── home_binding.dart
    │   │   │   │   ├── controllers/
    │   │   │   │   │   └── home_controller.dart
    │   │   │   │   └── views/
    │   │   │   │       ├── widgtes/
    │   │   │   │       │   └── image_picker_bottom_sheet.dart
    │   │   │   │       └── home_view.dart
    │   │   │   └── splash/
    │   │   │       ├── bindings/
    │   │   │       │   └── splash_binding.dart
    │   │   │       ├── controllers/
    │   │   │       │   └── splash_controller.dart
    │   │   │       └── views/
    │   │   │           └── splash_view.dart
    │   │   ├── routes/
    │   │   │   ├── app_pages.dart
    │   │   │   └── app_routes.dart
    │   │   └── consts.dart
    │   └── main.dart
    ├── .env
    └── pubspec.yaml
```

## Contributors

- [Mujahedul Islam](https://github.com/muj-i)

## License

This project is licensed under the MIT License. Refer to the [LICENSE](LICENSE) file for details.

