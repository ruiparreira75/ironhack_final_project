# ironhack_final_project
This is the repository for my Ironhack bootcamp project







# Project Overview

XXXXXXXX

## Introduction

XXXXXXXX


## Research Questions & Business Objectives

Most played games by average playtime?
What are the most reviewed games?
What are the games with the highest concorrent players during the analysis?
Top 20 Most Addictive Games all time?
Top 20 Most Addictive Games in recently costing under 20 dolares? 

---------------------------------
### Hyphotesis1
 "Free-to-play games (price = 0) have higher concurrent users than paid games." 

H₀ Free‑to‑play games (price = 0) have the same average concurrent users (CCU) as paid games. 
H₁ Free‑to‑play games (price = 0) have higher average concurrent users than paid games. 

created correlation matrix discovering that CCU (concurrent players) is the main metrics, alongside owners and playtime. 
For this hypothesis conducted Welch’s t‑test

New questions:
Of all the people who own the game, how many are playing right now? 
test if whether engagement intensity changes with price (created bins)
identify top outliers to identify high engagement in some titles
Analysed the standard deviation
the dataset is vere skewed and long‑tailed, so i calculated the z-scores to measure the stand dev.

## Dataset Selection 

I used Steamspy API dataset for the project. The dataset lists 1000 most popular games from steam. 
It contains 1000 rows in 17 initial columns. The API refreshes data every 24 hours. 

https://steamspy.com/api.php?request=all

The dataset contains names of the games, developer/publisher names, positive/negative user reviews, onwers, average and median playtime, price and peak concurrent users. 



# Workflow

## Tools & Libraries
- Python 3  
- Pandas (data manipulation)  
- NumPy (numerical operations)   
- Trello (project management)  
- GitHub (collaboration)
- Tableu (visualization)
- MySQL (data manipulation)

### 1. Project Management
I created a Kanban board on Trello to organize tasks throughout the project:
https://trello.com/b/s4MLU30r/final-project


### 2. GitHub Repository
My main repository is here:
https://github.com/ruiparreira75/ironhack_final_project

I commit and push files everyday during the project.



### 3. Final project presentation
The results of my analysis are available in the project presentation:

XXXXXXXX



# Project Chronology 

## Day 1 - Project Initiation & Data Selection
Selected the dataset and analyzed its structure 


## Day 2 – Clean and wrangle data 
Started cleaning the dataset. 
drop collumns and created new ones
created kpis for engagement
Selected the hypothesis. 


## Day 3  
Stated EDA analysis to awnser the questions for the hypothesis
Created addictiveness score kpi using average playtime (ever and 2 weeks).


## Day 4 
Done some queries in SQL: 
- XXXX
. XXX 
. XXX 
- XXX 



## Day 5 – 



## Analysis & Conclusions

### Key Findings and Insights




### Future Work and Improvements




## Challenges in the Project

