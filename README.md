# Pewlett Hackard Analysis #


## Overview ##

Pewlett Hackard is looking ahead to prepare for the vacancies left by the impending mass retirement of baby boomers, being referred to as the "silver tsunami." To prepare for this vacancy, they will look at potential mentors to rise up into newly vacated senior level positions.

## Results ##

To analyze the data, I began by sorting it into four new tables:
  * The first table found all current employees born betweek 1952 and 1955 - the employees most likely to retire soon.
    * ![Table 1](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/Deliverable%201.1.png)
  * The second table filtered our soon-to-be-retiring employees by their job title to begin to get an idea of where the gaps would happen.
    *  ![Table 2](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/Deliverable%201.2.png)
  * The next table took the list of retirment-age employees and counted the number of vacancies per job title, to assist in preparing for filling the right vacancies.
    * ![Table 3](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/Deliverable%201.3.png)
  * The final table determined mentorship program eligibility, which is employees born in the year 1965. With a large number of vacancies about to open up, a strong mentorship program will be integral to success.
    * ![Table 2.1](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/Deliverable%202.1.png)

With these tables, we can analyze the company's needs to replace employees nearing retirment and utiling their knowledge and skills to help train in up and coming employees and determine any areas of concern or gaps.

Query results indicat that a massive number of employees are nearing retirement age, with Senior Staff and Senior Engineers about to have roughly 50,000 vacancies. Here's how the overall numbers breakdown:

 * Pewlett Hackard has **300,024** total employees. 
 * There are **72,458** staff members nearing retirement.
 * With narrow parameters, there are **1,549** eligible for the mentorship program

### Summary ###

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)

As the "silver tsunami" begins to make an impact, **72,458** roles need to be replaced.
![NewQ1](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/count_retired_titles.png)

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? nope

Pewlett Hackard has 300,024 employees. 
1,549 eligible for mentorship
72,458 positions to fill
24% of the workforce is nearing retirement with 2% of the retiring crew elibile for mentorship. Each mentor would need 46-47 mentees each, and that seems ridiculous. Pushing a retirement age worker seems like a poor business decision. Losing any of those workers early without the ability to impart some of their wisdom to the next generation of worker will only further the pressure on the company.

**Mentorship Insights**

Within the list of 1,549 employees eligible for mentorship, I wanted to know if the eligible mentors would properly reflect the group nearing their departure.  
**Mentorship Title Counts**
_________________________________________________________________________________________________________
![mentorship_titles](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/metorship_titles.png)

**Retirement Title Counts**
_________________________________________________________________________________________________________
![Table 3](https://github.com/TRACIE-F/Pewlett-Hackard-Analysis/blob/main/Resources/Deliverable%201.3.png)
