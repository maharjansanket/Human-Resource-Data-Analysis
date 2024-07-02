# Human-Resource-Data-Analysis
## Agenda

<!--ts-->
  * [Problem Statement](#problem-statement)
  * [Objective](#objective)
  * [Hypothesis](#hypothesis)
  * [Data Overview](#data-overview)
  * [Analysis and Findings](#analysis-and-findings)
  * [Recommendations](#recommendations)
<!--te-->


<div align = "justify">

## Problem Statement
The human resources department of a company needs to gain deeper insights into their workforce to make informed decisions regarding employee management, retention, performance improvement, and strategic planning. They require a detailed analysis of various aspects such as gender distribution, average tenure, turnover rates, salary distributions, and correlations between education levels and performance ratings.

## Objective

The primary objective of this project is to analyze the company's human resources data to uncover patterns, trends, and insights that can help improve employee satisfaction, optimize workforce management, and enhance overall organizational performance.

## Hypothesis

- Higher education levels are associated with higher performance ratings and salaries.
- There are noticeable gender disparities in certain departments.
- Turnover rates vary significantly across departments, with some experiencing higher rates than others.
- Performance ratings are positively correlated with salaries.
- Tenure and age distributions vary significantly across departments, impacting department-specific strategies.


## Data Overview

The data used in this d project is generated using a combination of ChatGPT prompts and the Python Faker library. This dataset simulates a set of employee information typically found in HR systems, including demographics, job details, salary, performance evaluations, and attrition data. The generated data is designed to mimic real-world HR data, providing a rich dataset for analysis and visualization in Tableau.

## Analysis and Findings

### 1. Gender distribution across different departments
![Screenshot 2024-07-02 at 09 18 14](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/4e8b0c2d-6735-41fb-9de4-1c5044bdc268)

**Analysis**
- IT and Operations department have higher male representation.
- Other departments have relatively balanced gender

**Recommentations**
- Encourage female applicants for IT and Opearations roles to reduce gender gaps.

### 2. Most common education level among employees in each department

![Screenshot 2024-07-02 at 09 33 59](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/2f423dd3-e27e-4a5c-a40a-35e6ad4295d8)

**Analysis**
We can see that the most common education level is bachelors degree.
1. Customer Service : Bachelor (846)
2. Finance: Bachelor (341)
3. HR: Bachelor (89)
4. IT: Bachelor (679)
5. Marketing: Bachelor (466)
6. Operations: Bachelor (1905)
7. Sales: Bachelor (1090)

**Recommendation**

- In departments like IT and Sales where there's a substantial number of employees with higher education (master's, PhD), the organization can implement advanced training modules and leadership development programs.
- We can also identify potential gaps in job satisfaction and career development opportunities among employees with different education levels, and tailor retention strategies accordingly.

### 3. Correlation of education level with job titles and salary

![Screenshot 2024-07-02 at 09 36 11](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/f07f0056-70e1-4676-b1df-5eeb9d033e81)

**Analysis** 
- Generally higher education level correlate with higher average salaries across various job titles.
- We can see that PhD holders occupy higehr level managerial and specialists positions and have highest salary ranges and high school graduates tend to have roles like conent creator, customer service with lower salaries ranging from $58878 to $70414.

**Recommendation**
- Encouragement to employees to pursue higher education.
- The HR should recruit candidates with masters or PhD if the roles requires higher expertise and should offer higher salaries.


### Recommendations
Recommendatin goes here

### For a comprehensive understanding of the procedures, please refer the sql document available in the repository. If you need more detail or clarification on the project contact me on my email at @sanketech.maharjan@gmail.com

</div>


