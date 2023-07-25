# HR-Analytics

<h1>Overview</h1>
<p>This project aims to perform HR analytics using MySQL and Power BI to gain valuable insights into the organization's human resources data. By analyzing various HR metrics, we can make data-driven decisions to improve employee retention, performance, and overall organizational efficiency.</p>

<h2>Data Source</h2>

I downloaded the data source from here.
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
        <li>Clone this repository: git clone https://github.com/shw@06/HR-Analytics.git</li>
        <li>Set up the MySQL database and import the HR data from data.csv.</li>
        <li>Open the Power BI project file hr_analytics_report.pbix in Power BI Desktop.</li>
    </ul>

    <h2>Project Structure</h2>
    <p>The project repository is organized as follows:</p>
    <ul>
        <li>hr_analytics_report.pbix: Power BI project file containing the HR analytics report.</li>
        <li>data/: Directory containing the data file (data.csv) used for analysis.</li>
        <li>scripts/: Directory containing SQL scripts used for data preprocessing and transformation.</li>
        <li>visualizations/: Directory containing screenshots or images of key visualizations from the report.</li>
    </ul>

    <h2>Data Preprocessing</h2>
    <p>Before importing the data into Power BI, it is essential to perform data preprocessing using the SQL script data_preprocessing.sql. 
        The preprocessing steps include cleaning the data, handling missing values, and calculating additional metrics like age from birthdate.</p>

    <h2>HR Analytics Insights</h2>   
        Here are some of the key HR analytics insights obtained from the data:
        
        Employee attrition rate and factors influencing turnover.
        Recruitment efficiency and the impact of different hiring channels.
        Employee performance analysis by department and job title.
        Compensation and benefits analysis.
        Diversity and inclusion metrics.
        Employee engagement and satisfaction levels.

        
    <h2>Dashboard and Visualizations</h2>
    <p>Power BI report includes interactive dashboards and visualizations that allow users to explore HR analytics insights visually.</p> 
        
    <h3>Sample Visualization</h3>  
        
    <h2>Contributing</h2>
    <p>Contributions to this project are welcome. Feel free to open issues or submit pull requests for improvements or new features.</p>
        
        
    <h2>License</h2>
    <p>This project is licensed under the <a href="">MIT License</a> </p>