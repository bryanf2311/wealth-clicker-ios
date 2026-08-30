# Wealth Clicker iOS

A modern, aesthetic money clicker game built with HTML5 and Capacitor.

## 🚀 How to get the iOS App

This project uses GitHub Actions to build the app on macOS runners.

### 1. Building via GitHub Actions
When you push changes to this repository, a workflow will automatically trigger.
- Go to the **Actions** tab in this repository.
- Wait for the `Build iOS App` workflow to complete.
- Once finished, you can download the artifacts (the `.xcarchive` or `.app` file) from the workflow summary.

### 2. Local Development (Requires a Mac)
To build the app locally:
1.  Install [Xcode](https://developer.apple.com/xcode/).
2.  Install Node.js and npm.
3.  Run the following commands:
    ```bash
    npm install
    npx cap sync ios
    npx cap open ios
    ```
4.  In Xcode, select your target device and click **Run**.

### 3. Running as a Web App
You can also simply open `index.html` in any modern browser!
