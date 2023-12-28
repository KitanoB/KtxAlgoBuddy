# KTXAlgoBuddy: Algorithm Proficiency Analysis Tool

Algo Buddy is a script designed to assist in evaluating algorithmic proficiency. This tool gathers detailed information about a user's performance on a selected list of algorithmic tests. The primary goal is to provide essential data that can be used to analyze an individual's current skill level in algorithms and data structures. This analysis is further enhanced by sending the collected data to a backend, which utilizes OpenAI's capabilities to offer tailored recommendations.

## Key Features
Test Selection: Users can choose from a predefined list of algorithmic tests, focusing on key areas of interest.
Detailed Feedback Collection: The script collects various metrics like test duration, success/failure status, number of submissions, temporal and spatial complexity, and personal reflections on the problem-solving process.
Backend Integration: Collected data is structured in JSON format and sent to a backend for further analysis.
Future Enhancements: Plans to integrate a frontend interface, such as a Chrome extension, for a more interactive experience.

***Built With Gum***

Algo Buddy leverages Gum, a versatile tool for building glamorous shell scripts in Go. Gum offers an array of ready-to-use utilities that beautify and enhance the usability of shell scripts. With Gum, Algo Buddy provides an engaging and user-friendly interface for data input and selection processes.

## How to Use Algo Buddy
To use Algo Buddy, follow these steps:

- Clone this repository to your local machine.
- Make sure you have gum installed. You can install it using Homebrew or the package manager of your choice.
- Run the script using bash algo.sh.
- Follow the on-screen prompts to select a test and provide feedback.
  
The script will save your inputs in test_feedback.json and send this data to the backend (backend integration not yet operational).

## Project Status
Current Phase: Data collection script with backend data forwarding (backend not operational as of now).

## Next Steps: 
Development of a frontend interface and activation of the backend for comprehensive analysis and recommendation generation.

## Contributing
Contributions, ideas, and feedback are welcome and greatly appreciated. Feel free to fork this repository and submit pull requests or open issues to discuss proposed changes or enhancements.

## License
This project is open-sourced under a permissive license. Feel free to use, modify, and distribute it as you see fit.

Algo Buddy is an ongoing project that strives to make algorithm learning and analysis accessible and insightful for everyone. Your participation and feedback will help shape its future!

For more information on Gum, visit the Gum GitHub repository.
