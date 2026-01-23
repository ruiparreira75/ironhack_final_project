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

### 3. Miro and DrawnDB schema for SQL
I draw a simple miro schema for the table in here:
https://miro.com/app/board/uXjVGM5h0fg=/
https://www.drawdb.app/editor?shareId=80badfa2e3dc95eb5247f480734e573e

diagram 2
https://www.drawdb.app/editor?shareId=029da59327b0ef8792dcad2249d94cd4

For this project, I don't need N:N Relationship, because the dataset is a flat table with no separate entities.

### 4. Draft insights in Tableu
I draft some insinghts in Tableu, public story can be found here:

XXXXXXX


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


## Day 3 - EDA Analysis
Stated EDA analysis to awnser the questions for the hypothesis
Created addictiveness score kpi using average playtime (ever and 2 weeks).


## Day 4 - MySQL queries 
Draw schema in Miro and DrawDB
Done some queries in SQL: 
- Average_Lifetime_Playtime_Ranking
. discount_impact 
. engagement_ratio 
- estimated_revenue
- publisher_rankings
- recent_engagement
- review_quality


## Day 5 – Insights draft in Tableu
- Engagement vs price
- CCU vs Ownsers
- Top CCU Games
- Avg CCU: Free vs Paid
- Most played by average playtime
- most reviewd games
- Price vs Engagement Regression
- Top 10 Publishers by Player Base

Created dashboard and story as well. 

## Day 6 - Drafting narrative 
Started drafting narrative with conclusions on slides. 


## Analysis & Conclusions

### Key Findings and Insights





## Challenges in the Project
- trying to normalize data (free vs paid games)
- Choose the right method to analyse hipothesys


### Future Work and Improvements

