# Reaction Counter App
A fun SwiftUI sample app that lets users react to a post using emoji buttons and displays the reaction counts in real-time. Users can give a thumbs-up, a heart, or a laugh, and the app updates the count instantly for a dynamic and engaging experience.

## Features
Interactive Reaction Buttons: Three emojis (👍, ❤️, and 😂) for users to tap and give reactions.
Real-Time Updates: Each button tap updates the count immediately, giving instant feedback.
Fun and Simple UI: Clean layout with HStack and VStack for easy readability and engaging user interaction.

## Code Structure
`ReactionCounterView`: The main view containing the reaction buttons and the overall app layout.
`ReactionButton`: A reusable button component that displays an emoji and its count. Each button is bound to a state in ReactionCounterView to ensure real-time updates.

## Using Inject for Hot Reloading
The `Inject` library allows us to make code changes and see them instantly in the app without needing to restart the simulator or app. For more about this, you can check out this article.
https://craftmobile.dev/ios/hot-reloading-with-inject-for-uikit-swiftui/
