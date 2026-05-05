# Pong - AI Update 🏓

## Overview
A classic Pong clone built with Lua and LÖVE2D. This version enhances the traditional two-player game by replacing Player 1 with a custom AI opponent, creating an engaging single-player experience.

## Custom Features
* **Custom AI Opponent:** Replaced standard Player 1 keyboard input with a dynamic `PaddleAI` class.
* **Intelligent Tracking:** The AI constantly tracks the ball's Y position to intercept it.
* **Probability-Based Imperfection:** To ensure the AI is fair and beatable, it has a randomized probability check (`math.random() + math.random(1, 100) > 60`). This gives the AI roughly a 40% chance to skip its movement frame, simulating human reaction time and errors.
