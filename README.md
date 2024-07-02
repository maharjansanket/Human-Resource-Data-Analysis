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

### 4. Trends in hire dates and termination dates
![Screenshot 2024-07-02 at 09 46 38](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/b86bd1ac-0cda-423e-b341-7a3795cc98c7)


**Analysis**

- There is a moderate increase in hires from 2015-2016 (Increased by 54%)
- The hire rate has significanlty increaed in 2017. (Increased by 114%)
- There is a notable decrease in hires in 2021. (Dropped by 56.4% from 2020)
- Overall, the peak hires are in 2017, 2020, 2022, 2023.

**Recommendation**

- Investigate reasons for sharp fluctuations in hiring numbers.
- Analayze turnover rates corresponding to high hiring years to ensure workforce stability.
- Anticipate future workforce needs based on business cycles and external factors
- Collect feedback from recent hires to improve onboarding process.

### 5. Average salary based on job titles

![Screenshot 2024-07-02 at 09 49 40](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/8d127ebb-cb9d-4a84-9550-3c41b4c5edd3)

- The HR department can review and ensure compettitive salary ranges, espeically for lower-salary roles within each department to attract and retain talents.
- Assesment of fair pay equity can be conducted to ensure fairnes and avoid potential dissatisfaction or turnover.
- Implement performance-based salary increments and bonuses to motivate employees.
- Make salary adjustments periodically by conducting market salary surveys.


### 6. Variation of salary with education level and performance rating.
![Screenshot 2024-07-02 at 09 51 24](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/9f8b8502-4753-4a3a-ac36-82daee1ecfbc)

**Analysis**

- Salaries are relativley consisistent across perfoamnce rating.

**Recommendations**

- Adjust salary policies to ensure alignment with performance and avoid potential morale issues among high performers.
- Introduce or enhance bonus structures to reward excellent performance more distinctly.
- Implement targeted performance improvement programs to assist those rated as "Need Improvement" to reach higher performance levels, ensuring their salary aligns with their contributions.
- Conduct regular salary reviews to maintain competitivenes and fairness across all education levels and performance ratings.


### 7. Distribution of performance ratings among employees
![Screenshot 2024-07-02 at 11 39 59](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/02098e12-584f-4e80-906a-90035dbb064c)

**Analysis**

- The largest group lies under good which means the organization is doing well.
- One third of the company has an excellent peformance
- 11.3% of the employees needs improvement 

**Recommendation**

- Develop targeted training and devlopment programs for the 11.3% of employees.
- Reward high performers which will help in maintaining high morale and retain top talents.
- Consider promoting high-perorming individuals to leadership roles.
- Establish achieveable performance goals and provide necessary resources and support to help employees meet these goals.

### 8. Impact of education level on career advancement
![Screenshot 2024-07-02 at 11 51 02](https://github.com/maharjansanket/Human-Resource-Data-Analysis/assets/25703361/8a58329b-7c12-4f28-b911-af707b728cf4)

**Analysis**
- High School Diploma: Salary range: $58878 - $70414
                    Roles: Primarily entry-level and some intermediate positions.
                    Trend: Lower salaries compared to bachelor's degree holders and roles are limited to non-managerial roles.
- Bachelors Degree: Salary range: $62259 - $98002
                    Roles: Wide variety from Customer service to operations occupying both entry to mid-high level roles.
                    Trend: Higher salaries generally associated with management and specialized roles.
- Master's Degree: Salary range: $62197 - $122331
                    Roles: Predominantly managerial and specialized positions.
                    Trend: Significant salary boost compared to bachelor's degree indicating master's degree holders move into higher managerial roles.
- PhD: Salary range: $82403 - $127329
                    Roles: Highest positions including strategic and senior management roles.
                    Trend: Highest among all education levels, often in top managerial roles.
  

**Recommendation**

- The organziation can provide tuition reimbursement and support for employees pursuing higher education to promote career advancement
- Offer targeted trainig and certification programs to help high school diploma holders advance to higher-paying roles withing the company.
- Adjust salary structures to maintain fairness and encouragement to pursue further education and excel in theri roles.


### For a comprehensive understanding of the procedures, please refer the sql document available in the repository. If you need more detail or clarification on the project contact me on my email at @sanketech.maharjan@gmail.com

</div>


