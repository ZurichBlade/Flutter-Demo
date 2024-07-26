# Flutter Demo App
This is my Flutter App Demo, which contains a splash screen and bottom navigation with three tabs. The first tab is the Home Screen, where remote data is fetched and displayed using a RecyclerView. The second tab is the Map Screen, which highlights the current location with a custom pin. The final tab is the User Details Screen, featuring a registration form equipped with text fields, a button, and a spinner. This form includes validation and a confirmation dialog.


## Screenshots

![App Screenshot](https://github.com/ZurichBlade/Flutter-Demo/blob/master/res/images/Screenshot%202024-07-26%20115343.png)


## Features

- **Screen 1: Splash Screen** (holds for 3 seconds)
  - Logo
  - Tagline

- **Screen 2: Dashboard with Bottom Navigation**
  
  Bottom navigation with 3 tabs as follows:

  1. **Home**
     - Display a list of users using a RecyclerView. Fetch data remotely.
  2. **Map**
     - Display a map in full screen with the current location using a custom pin.
  3. **User Details**
     - Create a registration form using text fields, a button, and a spinner.
     - Click on the “Update” button at the bottom of the screen. Validate all fields; once all items are filled, display a pop-up with the message: “Your data has been updated successfully.”
