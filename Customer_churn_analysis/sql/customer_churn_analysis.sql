use churn_customer_data;

select * from customer_churn_analysis_data;

select count(*) as total_customers from customer_churn_analysis_data;

select round(sum(case when churn='Yes' then 1 else 0 end)*100,2)/count(*) as churn_rate
from customer_churn_analysis_data;

select count(*)  as churned_customers from customer_churn_analysis_data
where churn = 'Yes';

select sum(monthlycharges) as revenue_at_risk from customer_churn_analysis_data
where churn= 'Yes';

select churn,avg(satisfactionscore) 
from customer_churn_analysis_data
group by churn;

select churn,avg(numsupporttickets) 
from customer_churn_analysis_data
group by churn;

select churn,round(avg(tenuremonths),2)
from customer_churn_analysis_data
group by churn;

select churn,round(avg(lastlogindaysago),2)
from customer_churn_analysis_data
group by churn;

select churn,round(avg(latepaymentslast6m),2)
from customer_churn_analysis_data
group by churn;

select churn,round(avg(monthlycharges),2)
from customer_churn_analysis_data
group by churn;

select churn,round(avg(tenuremonths)*avg(monthlycharges),2)
from customer_churn_analysis_data
group by churn;

select count(*),churn,contracttype
from customer_churn_analysis_data
group by contracttype,churn
having churn='Yes'
order by count(*) desc;

SELECT
    ContractType,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_analysis_data
GROUP BY ContractType
ORDER BY churn_rate DESC;

select count(*),churn,paymentmethod
from customer_churn_analysis_data
group by paymentmethod,churn
having churn='Yes'
order by count(*) desc;

select paymentmethod, count(*) as total_cust,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_cust,
sum(case when churn = 'Yes' then 1 else 0 end)/count(*) as churn_rate
from customer_churn_analysis_data
group by paymentmethod
order by churn_rate desc;

select internetservice, count(*) as total_cust,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_cust,
sum(case when churn = 'Yes' then 1 else 0 end)/count(*) as churn_rate
from customer_churn_analysis_data
group by internetservice
order by churn_rate desc;

select citytier, count(*) as total_cust,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_cust,
sum(case when churn = 'Yes' then 1 else 0 end)/count(*) as churn_rate
from customer_churn_analysis_data
group by citytier
order by churn_rate desc;

select seniorcitizen, count(*) as total_cust,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_cust,
sum(case when churn = 'Yes' then 1 else 0 end)/count(*) as churn_rate
from customer_churn_analysis_data
group by seniorcitizen
order by churn_rate desc;

select  count(*) as total_cust,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_cust,
sum(case when churn = 'Yes' then 1 else 0 end)/count(*) as churn_rate,
sum(case when churn='Yes' then monthlycharges else 0 end) as revenue_at_risk
from customer_churn_analysis_data
where paymentmethod='Electronic check' and 
contracttype='month-to-month'
order by churn_rate desc;




