//Welcome To The basics!                //  DevOps is the name of the branch you may work on to change any code.
                                        //   DevOps Branch Commit Rules:
                                        //  1. Pull first: git pull origin DevOps
                                        //  2. Use clear messages: type(scope): description
                                        //  3. Commit small, and test well.
                                        //  4. Push clean: git push origin DevOps
                                        
                                        // P.S Only merge DevOps branch with main under these circumstances:
                                        // 1. Has no unfinished methods and has meaningful changes.
                                        // 2. Passes all tests and build checks.
                                        // DO NOT MERGE if:
                                        // The branch is empty.
                                        // You’re still testing or iterating on workflows.
                                        // It introduces breaking changes without coordination.
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Import statements are like borrowing tools from a library to build our app.
// They let us use pre-made code to save time and add features.
import 'package:flutter/material.dart'; // This is Flutter's main library, giving us tools to build the user interface (UI) like buttons, text fields, and layouts.
import 'package:google_fonts/google_fonts.dart'; // This library lets us use the Poppins font to make text look friendly and rounded, perfect for StudyPals' fun vibe.
import 'package:animate_do/animate_do.dart'; // This adds animations (like bouncing or fading) to make the UI feel lively and engaging.

// The main() function is the starting point of the app, like pressing "Start" on a game.
// It tells Flutter to run our app.
void main() {
  // runApp() launches our app by showing the StudyPalsApp widget (think of a widget as a piece of the UI, like a Lego block).
  // The 'const' keyword means this widget won't change, which saves memory.
  runApp(const StudyPalsApp());
}


// StudyPalsApp is a widget that defines the overall app structure.
// It’s a StatelessWidget, meaning it’s a static piece of UI that doesn’t change (like a fixed picture, not a video).
class StudyPalsApp extends StatelessWidget {
  // The 'const' and 'super.key' help Flutter manage this widget efficiently.
  // 'key' is like an ID for widgets, but beginners can ignore it for now.
  const StudyPalsApp({super.key});

  // The build() method is where we describe what the app looks like.
  // It returns a widget tree (a hierarchy of UI pieces) that Flutter draws on the screen.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is a special widget that sets up the app’s structure, like a frame for a painting.
    // It defines things like the app’s title, colors, and the first screen to show.
    return MaterialApp(
      // The title appears in the app switcher (e.g., on your phone’s task manager).
      title: 'StudyPals',
      // ThemeData sets the app’s visual style (colors, fonts, etc.) so all screens look consistent.
      theme: ThemeData(
        // primaryColor is the main color used for things like the app bar.
        // We use StudyPals’ teal color (#66B2B0) to match the design.
        primaryColor: const Color(0xFF66B2B0), // Accent1
        // colorScheme defines a set of colors for different parts of the UI.
        // 'light' means we’re using a bright theme (not dark mode).
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF66B2B0), // Main color (teal) for buttons, etc.
          secondary: Color(0xFFF2494C), // Secondary color (red) for highlights.
          tertiary: Color(0xFFF9AA19), // Extra color (yellow) for accents.
        ),
        // scaffoldBackgroundColor sets the default background for screens.
        // We use white for a clean look, but we’ll override it with a gradient later.
        scaffoldBackgroundColor: Colors.white,
        // elevatedButtonTheme customizes all buttons in the app.
        elevatedButtonTheme: ElevatedButtonThemeData(
          // styleFrom() lets us define how buttons look (shape, color, etc.).
          style: ElevatedButton.styleFrom(
            // Transparent background so we can use a gradient (set later in the button).
            backgroundColor: Colors.transparent,
            // A slight shadow color to make buttons pop out a bit.
            shadowColor: Colors.black26,
            // Elevation makes the button look raised (like it’s floating).
            elevation: 8,
            // Padding adds space inside the button for comfort.
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            // Rounded corners (20 pixels) for a bubbly, friendly shape.
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        // textTheme sets the font style for all text in the app.
        // We use Poppins from google_fonts for a rounded, fun look.
        textTheme: GoogleFonts.poppinsTextTheme(
          // Apply the current theme’s text styles and tweak them.
          Theme.of(context).textTheme.apply(
                bodyColor: const Color(0xFF333333), // Dark gray for text readability.
                displayColor: const Color(0xFF333333),
              ),
        ).apply(
          // Make text 10% bigger for a bold, clear look.
          fontSizeFactor: 1.1,
        ),
        // inputDecorationTheme styles text fields (like username/password boxes).
        inputDecorationTheme: InputDecorationTheme(
          // Fill the text field with a color for a solid background.
          filled: true,
          // Slightly transparent white to blend with the gradient background.
          fillColor: Colors.white.withOpacity(0.9),
          // OutlineInputBorder makes text fields have a border.
          border: OutlineInputBorder(
            // Rounded corners (15 pixels) for a bubbly look.
            borderRadius: BorderRadius.circular(15),
            // No visible border line for a cleaner style.
            borderSide: BorderSide.none,
          ),
          // Padding inside text fields for comfort.
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          // Icon color (teal) for the person/lock icons in text fields.
          prefixIconColor: const Color(0xFF66B2B0),
        ),
      ),
      // The 'home' property sets the first screen users see (our login screen).
      home: const LoginScreen(),
    );
  }
}

// LoginScreen is another widget that defines the login page’s UI.
// It’s also a StatelessWidget because the UI doesn’t change unless we reload it.
class LoginScreen extends StatelessWidget {
  // Constructor with a key for Flutter’s internal use.
  const LoginScreen({super.key});

  // The build() method describes the login screen’s appearance.
  @override
  Widget build(BuildContext context) {
    // Scaffold is like a blank canvas for a screen, providing structure (e.g., a background).
    return Scaffold(
      // The body is the main content of the screen.
      body: Container(
        // Container is a widget that can hold other widgets and have decorations (like backgrounds).
        // We use a gradient to make the background colorful and fun.
        decoration: const BoxDecoration(
          // LinearGradient creates a smooth color transition from one color to another.
          gradient: LinearGradient(
            // Start the gradient at the top-left corner.
            begin: Alignment.topLeft,
            // End at the bottom-right corner for a diagonal effect.
            end: Alignment.bottomRight,
            // Use StudyPals’ yellow (#F9AA19) and teal (#66B2B0) for a vibrant look.
            colors: [
              Color(0xFFF9AA19), // Accent4 (yellow)
              Color(0xFF66B2B0), // Accent1 (teal)
            ],
          ),
        ),
        // SafeArea ensures the UI doesn’t get cut off by phone notches or status bars.
        child: SafeArea(
          // Padding adds space around the content (24 pixels on all sides).
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            // Center aligns the content in the middle of the screen (horizontally and vertically).
            child: Center(
              // SingleChildScrollView lets the user scroll if the content is too big for the screen.
              child: SingleChildScrollView(
                // Column stacks widgets vertically (like a list from top to bottom).
                child: Column(
                  // Center the content vertically for a balanced look.
                  mainAxisAlignment: MainAxisAlignment.center,
                  // The children list contains all the widgets we want to show.
                  children: [
                    // BounceInDown is an animation from animate_do that makes the logo bounce in from the top.
                    BounceInDown(
                      // Animation takes 1000 milliseconds (1 second) to complete.
                      duration: const Duration(milliseconds: 1000),
                      // Icon is a simple image (like a logo). We use a school icon as a placeholder.
                      child: const Icon(
                        Icons.school_rounded, // Rounded school icon for a friendly look.
                        size: 100, // Big size to stand out.
                        color: Colors.white, // White for contrast against the gradient.
                      ),
                    ),
                    // SizedBox adds empty space (32 pixels high) to separate widgets.
                    const SizedBox(height: 32),
                    // FadeInUp animates the welcome text to fade in while sliding up.
                    FadeInUp(
                      // Animation takes 800 milliseconds for a quick effect.
                      duration: const Duration(milliseconds: 800),
                      // Text displays words on the screen.
                      child: Text(
                        'Welcome to StudyPals!', // Friendly greeting for users.
                        // Style the text with Poppins font for a bubbly feel.
                        style: GoogleFonts.poppins(
                          fontSize: 28, // Large text for emphasis.
                          fontWeight: FontWeight.bold, // Bold for a strong look.
                          color: Colors.white, // White for readability on the gradient.
                        ),
                      ),
                    ),
                    const SizedBox(height: 32), // More space for breathing room.
                    // Username text field with a fade-in animation.
                    FadeInUp(
                      duration: const Duration(milliseconds: 900),
                      // Container holds the text field and adds a shadow for depth.
                      child: Container(
                        decoration: BoxDecoration(
                          // BoxShadow makes the text field look like it’s floating.
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1), // Subtle shadow.
                              blurRadius: 10, // Soft blur for a gentle effect.
                              offset: const Offset(0, 5), // Shadow slightly below.
                            ),
                          ],
                        ),
                        // TextField lets users type text (like a username).
                        child: TextField(
                          // Decoration styles the text field’s appearance.
                          decoration: InputDecoration(
                            labelText: 'Username', // Hint text when empty.
                            prefixIcon: const Icon(Icons.person_rounded), // Person icon on the left.
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Smaller space between fields.
                    // Password text field with animation.
                    FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: TextField(
                          // obscureText hides the password (shows dots instead of letters).
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock_rounded), // Lock icon.
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24), // Space before the button.
                    // Login button with animation and gradient.
                    FadeInUp(
                      duration: const Duration(milliseconds: 1100),
                      // Container adds a gradient and shadow to the button.
                      child: Container(
                        decoration: BoxDecoration(
                          // Gradient from red to yellow for a colorful, bubbly button.
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFF2494C), // Accent2 (red)
                              Color(0xFFF9AA19), // Accent4 (yellow)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20), // Rounded corners.
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        // ElevatedButton is a clickable button that looks raised.
                        child: ElevatedButton(
                          // onPressed runs when the button is clicked.
                          onPressed: () {
                            // ScaffoldMessenger shows a temporary message (snackbar) at the bottom.
                            // This is a placeholder for actual login logic (to be added in Week 2).
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Login button pressed!')),
                            );
                          },
                          // Style ensures the button uses the container’s gradient.
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, // Let gradient show.
                            shadowColor: Colors.transparent, // No extra shadow.
                          ),
                          // Text inside the button.
                          child: Text(
                            'Log In',
                            style: GoogleFonts.poppins(
                              fontSize: 18, // Slightly larger text.
                              fontWeight: FontWeight.w600, // Semi-bold for emphasis.
                              color: Colors.white, // White for contrast.
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Forgot Password link with animation.
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      // TextButton is a simple, flat button (like a link).
                      child: TextButton(
                        // onPressed runs when clicked (placeholder for future logic).
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Forgot Password clicked!')),
                          );
                        },
                        // Text for the link.
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                            fontSize: 14, // Smaller text for a subtle link.
                            color: Colors.white,
                            decoration: TextDecoration.underline, // Underline to look like a link.
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}