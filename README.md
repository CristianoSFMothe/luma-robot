# Luma Robot

This project uses Robot Framework for automated testing of the [Magento Software Testing Board](https://magento.softwaretestingboard.com/).

## 🛠️ 1. Project Setup

To get started with this project, create a new folder named `Luma Robot`.

```bash
mkdir "luma-robot"
cd "luma-robot"
```

## ⚙️ 2. Installing Robot Framework

### 🖥️ Create a Virtual Environment

First, create a virtual environment using Python's `venv`.

#### For Windows:

```bash
python -m venv venv
```

#### For Linux:

```bash
python3 -m venv venv
```

### ✅ Activate the Virtual Environment

#### For Windows:

```bash
venv\Scripts\activate
```

#### For Linux:

```bash
source venv/Scripts/activate
```

### 📦 Install Robot Framework

Once the virtual environment is activated, install the Robot Framework using `pip`.

```bash
pip install robotframework
```

If prompted to update `pip`, run:

```bash
python.exe -m pip install --upgrade pip
```

## 🌐 3. Installing Browser Library and Initialization

### 📥 Install the Robot Framework Browser Library

Next, you need to install the `robotframework-browser` library, which is used for interacting with the browser.

```bash
pip install robotframework-browser
```

### 🏁 Initialize the Browser Library

Once the library is installed, initialize the Browser Library for use.

```bash
rfbrowser init
```

## 🚀 4. Running Tests

To run tests, simply use the following command:

```bash
robot -d ./logs test/
```

![image](https://github.com/user-attachments/assets/c97aa627-6c86-475d-a436-97418209e8d3)

![image](https://github.com/user-attachments/assets/7eb07d10-7125-4789-8854-c255a11358a7)

![image](https://github.com/user-attachments/assets/65ad6637-2058-43fe-8fdb-6326ff5595da)


## 🏗️ Project Status

**This project is under construction.** Future implementations will include additional test cases and improvements to the existing test suite. Feel free to contribute and collaborate as the project evolves!

## 🤝 Contributing

We welcome contributions to this project! If you'd like to help improve the test cases or add new features, please feel free to fork the repository, create a branch, and submit a pull request.

### Guidelines for Contributing:

- Fork the repository
- Create a new branch (`git checkout -b feature/your-feature`)
- Commit your changes (`git commit -am 'Add new feature'`)
- Push to the branch (`git push origin feature/your-feature`)
- Create a new pull request

## 🧑‍💻 Author

This project is developed and maintained by [Cristiano Mothe](https://portfolio-qa-cristiano.vercel.app/). 

You can visit my portfolio to see more about my work and skills. Feel free to reach out for any questions or collaborations!
