ironhack_final_project
This is the repository for my Ironhack bootcamp project


# Understanding Engagement on Steam: A Statistical Exploration of PC gaming

## Project Overview

This project explores player behavior and market dynamics on Steam using the SteamSpy dataset. Through a structured exploratory data analysis, it examines how ownership, engagement, playtime,  and pricing interact across hundreds of games. 
The analysis highlights the platform’s long‑tailed distribution, where a small number of blockbuster titles dominate attention, while most games operate at much smaller scales. These insights establish a solid foundation for KPI development, hypothesis testing, and deeper analytical modeling.


## Intro

Steam is a PC gaming platform, with a massive user base, with estimates in late 2025 and early 2026 pointing to around 147-154 million monthly active users, reaching peak concurrent players over 40 million in early 2025, with significant growth continuing into 2025 and 2026, solidifying its position as the leading PC gaming platform. 


## Research Questions & Business Objectives

Most played games by average playtime?
What are the most reviewed games?
What are the games with the highest concorrent players during the analysis?
Top 20 Most Addictive Games all time?
Top 20 Most Addictive Games in recently costing under 20 dolares? 

---------------------------------
## Hyphotesis intro

For the last 20 years as a gaming journalist, I came up with this burning question, about the good quality of free-to-play games, while the main AAA games are more expensive. With this in mind, are we at a point that free games could replace paid ones? In the hypothesis I tested if free-to-play games have higher mean concurrent users than paid games. 

My hypothesis wasn’t just about raw activity, but about stronger engagement. 

We expected to see higher concurrent players in free to play games, because of the large influx due to zero cost barrier. 

Expected lower players in paid games, because of the purchase requirement. 


## Hyphotesis

 "Free-to-play games have higher average concurrent users than paid games." 

H₀ Free‑to‑play games have the same/less average concurrent users as paid games. 

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

https://public.tableau.com/app/profile/rui.parreira/viz/shared/KFCFSF7TW


### 3. Final project presentation
The results of my analysis are available in the project presentation:

https://www.canva.com/design/DAG_O8-lEQw/2ulZ5CPuZG38sgc1CmiT2w/edit?utm_content=DAG_O8-lEQw&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton



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

### Hypothesis testing:

I used a Welch’s t-test instead of a standard t-test because the two groups have very different variances:
Free games have huge owner counts and high volatility
Paid games have smaller, more stable distributions
The sample sizes are also different
Many more paid games
Fewer free games
Welch’s t‑test is specifically designed for unequal variances and adjusts the degrees of freedom to account for this imbalance



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

## Day 6-9 - Drafting narrative in slides
Started drafting narrative with conclusions on slides. 


## Day 10 - Presentation
I presented the project to class and the main conclusions. 


## Conclusions

Paid games have higher CCU per owner than free games. This means:
- That paid players are more likely to be actively playing the games they own
- Free-to-play games attract huge audiences, but a smaller fraction of those players are active at any given moment
- Paid games have more loyal or committed players relative to their owner base

We can see that free to play games have massive download numbers. But many players try the game once and never return. 
There is a wide engagement, but shallow. 
The data strongly contradicts my hypothesis. There is no statistical support for “free > paid”. The evidence points in the opposite direction


### Key Findings and Insights

- Price is a strong predictor of engagement intensity
- Free games attract, but paid games retain
- Mid‑price games may need better retention strategies
- High‑price games justify their cost with deeper engagement

Engagement isn’t always proportional to ownership, as some games with fewer owners have high CCU


## Key performance indicators (KPIs):

Monetization Model KPIs (Free vs Paid comparison)

Addictiveness score kpi (Using average playtime ever and 2 weeks)

Concurrent users per owner (Of all the people who own the game, how many are playing right now?")

Recent engagement (Playtime in last 2 weeks)

CCU per owner across different price tiers (we can see how different price bins differ) 

Top Outliers - high engagement (What are the games with most engagement)


## Challenges in the Project
- Trying to normalize data (free vs paid games)
- Choose the right method to analyse hyphotesis
- Identifying outliers



