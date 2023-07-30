# HR-Analytics

<h1>Overview</h1>
<p>This project aims to perform HR analytics using MySQL and Power BI to gain valuable insights into the organization's human resources data. By analyzing various HR metrics, we can make data-driven decisions to improve employee retention, performance, and overall organizational efficiency.</p>

<h2>Data Source</h2>

I downloaded the data source from <a href="https://github.com/abhishek201294/HR-analytics-Dashboard/blob/main/Human%20Resources.csv">here</a>.
    <ul>
        <li>emp_id: Employee ID (varchar)</li>
        <li>first_name: Employee's first name (text)</li>
        <li>last_name: Employee's last name (text)</li>
        <li>birthdate: Employee's date of birth (date)</li>
        <li>gender: Employee's gender (text)</li>
        <li>race: Employee's race/ethnicity (text)</li>
        <li>department: Employee's department (text)</li>
        <li>jobtitle: Employee's job title (text)</li>
        <li>location: Employee's work location (text)</li>
        <li>hire_date: Employee's date of hire (date)</li>
        <li>termdate: Employee's termination date (date)</li>
        <li>location_city: City of the employee's work location (text)</li>
        <li>location_state: State of the employee's work location (text)</li>
        <li>age: Employee's age calculated from the birthdate (integer)</li>
    </ul>

<h2>Installation</h2>
    <ul>
        <li>Clone this repository: git clone https://github.com/shw06/HR-Analytics.git</li>
        <li>Set up the MySQL database and import the HR data from Human Resources.csv.</li>
        <li>Open the Power BI project file HR_dashboard.pbix in Power BI Desktop.</li>
    </ul>

<h2>Project Structure</h2>
    <p>The project repository is organized as follows:</p>
    <ul>
        <li>HR_dashboard.pbix: Power BI project file containing the HR analytics report.</li>
        <li>data/: Directory containing the data file (Human Resources.csv) used for analysis.</li>
        <li>scripts/: Directory containing SQL scripts and CSV's used for data preprocessing and transformation.</li>
        <li>visualizations/: Directory containing screenshots or images of key visualizations from the report.</li>
    </ul>

<h2>Data Preprocessing</h2>
    <p>Before importing the data into Power BI, it is essential to perform data preprocessing using the SQL script data_preprocessing.sql. 
        The preprocessing steps include cleaning the data, handling missing values, and calculating additional metrics like age from birthdate.</p>

<h2>HR Analytics Insights</h2>
<h3>Questions</h3>
    <ol>
        <li>What is the gender breakdown of employees in the company ?</li>
        <li>What is the race/ethenicity breakdown of the company ?</li>
        <li>What is the age distribution in the company ?</li>
        <li>How many employees work at headquaters or remote locations ?</li>
        <li>What is the average length of employement for employees who have been terminated ?</li>
        <li>How does gender distribution vary across departments and job titles ?</li>
        <li>What is the distribution of job titles in the company ?</li>
        <li>What is the distribution of employees across location by city and state ?</li>
        <li>Total number of employees</li>
        <li>How many active employees are there</li>
    </ol>


Here are some of the key HR analytics insights obtained from the data:

<ul>
    <li>There are about 22K+ total employees of which around 20K are active.</li>
    <li>The average length of employement is of 8 years.</li>
    <li>The gender distribution is well balanced but male employees are more than female employees.</li>
    <li>74% of the workforce works from Headquaters than remote.</li>
    <li>The youngest employee is 20 years a=old and the oldest employee is 57 years old.</li>
    <li>5 age groups are created: 18-25, 26-35, 36-45, 46-55,56-65</li>
    <li>A large numbers of employees are from 26-35, 36-45 and 46-55 age groups.</li>
    <li>White race is the more dominant while Native hawaiian is the lowest.</li>
    <li>A large number of employees come from Ohio state.</li>
    <li>The most employees are from Engineering department followed by Accounting while 
        the least number of employees come from Marketing, Legal and Auditing department.</li>
</ul>
        

        
<h2>Dashboard and Visualizations</h2>
    <p>Power BI report includes interactive dashboards and visualizations that allow users to explore HR analytics insights visually.</p> 
        
<h3>Sample Visualization</h3>  
<img src="\visualization\viz.png">
        
<h2>Contributing</h2>
    <p>Contributions to this project are welcome. Feel free to open issues or submit pull requests for improvements or new features.</p>
        
