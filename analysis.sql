+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++ ANALYSIS.SQL FILE ++++++++++++++++++++++++++++++
++++++++++++ FORESIGHT PHARM.  ++++++++++++++++++++++++++++++
++++++++++++ NOV. 2022         ++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The following are the SQL queries that were used to carry out data analysis
on the Foresight Pharmaceutical Company dataset:

--  total ammount of sales per distributor 
select distributor, round(sum(sales),0) as total_amount_sales from PharmData
	group by distributor 
	order by total_amount_sales desc;
	
--  total no of sales per distributor
select distributor, count(*) as total_no_sales from PharmData
	group by distributor 
	order by total_no_sales desc;

-- total amount of sales per sales rep
select [Name of Sales Rep], round(sum(sales),0) as total_amount_sales from PharmData
	group by [Name of Sales Rep]
	order by total_amount_sales desc;

 -- total amount of sales per manager
select Manager, round(sum(sales),0) as total_amount_sales from PharmData
	group by  Manager
	order by total_amount_sales desc;

-- total amount of sales per sales team
select [Sales Team], round(sum(sales),0) as total_amount_sales from PharmData
	group by [Sales Team]
	order by total_amount_sales desc;

-- total amount of sales per channel
select Channel, round(sum(sales),0) as total_amount_sales from PharmData
	group by Channel 
	order by total_amount_sales desc;

-- total amount of sales per sub-channel
select [Sub-channel], round(sum(sales),0) as total_amount_sales from PharmData
	group by [Sub-channel] 
	order by total_amount_sales desc;

-- total no of sales per product class
select [product class], count(*) as total_no_sales from PharmData 
	group by [Product Class]
	order by total_no_sales desc;

-- total amount of sales per year
select [year], round(sum(sales),0) as total_amount_sales from PharmData
	group by [Year]
	order by total_amount_sales desc;

-- total amount of sales per product class
select [product class], round(sum(sales),0) as total_amount_sales from PharmData
	group by [product class]
	order by total_amount_sales desc;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
