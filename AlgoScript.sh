#!/bin/bash

# Welcome Message
echo "Welcome to the Algorithm Test Feedback Tool!" | gum style --border rounded --padding "1 2" --border-foreground 212 --foreground 212
sleep 1
clear

# Test Choice
echo "Please choose a test:"
test_choices="Valid Parentheses\nMerge Intervals\nGroup Anagrams\nLRU Cache\nNumber of Islands\nCoin Change\nBinary Search Tree Iterator\nDesign Twitter"
test_name=$(echo "$test_choices" | gum choose)
echo "Test Selected: $test_name" | gum style --bold --foreground 212

# Start Test and record the start time
start_time=$(date +%s)
echo "Test started at: $(date)"

# User choice to stop the test or exit the script
while true; do
    choice=$(echo "Stop the test\nExit Algo Buddy" | gum choose)
    if [ "$choice" == "Stop the test" ]; then
        end_time=$(date +%s)
        echo "Test stopped at: $(date)"
        break
    elif [ "$choice" == "Exit Algo Buddy" ]; then
        echo "Exiting Algo Buddy."
        exit 0
    fi
done

# Inputs From User
echo "Was the test a Success or a Failure?"
success=$(echo "Success\nFailure" | gum choose)
echo "Result: $success" | gum style --foreground 212

echo "Enter the number of submissions:"
submissions=$(gum input --placeholder "Number of submissions:")
echo "Number of submissions: $submissions" | gum style --foreground 212

# Temporal Complexity
echo "Choose the Temporal Complexity:"
complexities="O(1)\nO(log n)\nO(n)\nO(n log n)\nO(n^2)\nO(2^n)\nO(n!)"
temporal_complexity=$(echo "$complexities" | gum choose)
echo "Temporal Complexity: $temporal_complexity" | gum style --foreground 212

# Spatial Complexity
echo "Choose the Spatial Complexity:"
spatial_complexity=$(echo "$complexities" | gum choose)
echo "Spatial Complexity: $spatial_complexity" | gum style --foreground 212

# Difficulties
echo "Describe any difficulties in understanding the problem:"
problem_understanding=$(gum write --placeholder "(esc to validate)")
echo "Problem Understanding: $problem_understanding" | gum style --foreground 212

echo "Describe your resolution strategy:"
resolution_strategy=$(gum write --placeholder "(esc to validate)")
echo "Resolution Strategy: $resolution_strategy" | gum style --foreground 212

# Confidence
echo "On a scale of 1-10, how confident did you feel?"
confidence=$(gum choose {1..10})
echo "Confidence: $confidence" | gum style --foreground 212

echo "What did you learn or notice?"
learnings=$(gum write --placeholder "(esc to validate)")
echo "Learnings: $learnings" | gum style --foreground 212

# Create JSON Output
echo "{
  \"testName\": \"$test_name\",
  \"testResult\": \"$success\",
  \"numberOfSubmissions\": \"$submissions\",
  \"temporalComplexity\": \"$temporal_complexity\",
  \"spatialComplexity\": \"$spatial_complexity\",
  \"problemUnderstanding\": \"$problem_understanding\",
  \"resolutionStrategy\": \"$resolution_strategy\",
  \"confidenceLevel\": \"$confidence\",
  \"learnings\": \"$learnings\",
  \"startTime\": \"$start_time\",
  \"endTime\": \"$end_time\"
}" > test_feedback.json

# URL de votre backend
backend_url="http://localhost:8080/test"

curl -X POST -H "Content-Type: application/json" -d @test_feedback.json $backend_url

# Final Message
echo "Data saved in test_feedback.json. Thanks for using this tool!" | gum style --foreground "#FF69B4" --border double --border-foreground "#FF69B4" --padding "1 2"
