<p align="center"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTfPGGU_vu9pE4qzD0maeSB1ToqIQE1xY9KA&usqp=CAU"></p>

# The Diamond Store 

In this repository we are going to explore the characterstics of the sales of the Diamond Store in the past year. 
- We will first obtain the data from our database via **Dbeaver**
- We will manipulate it in order to build our dashboard with the help of **pandas**
- We will built a revenue dashboard on **Tableau**
- We will come up with very interesting **insights for the whole company as well as each local store**. 

---

## __Step 1: Data Exploration and Preparation__

Starting form the diamonds.db, we connected DBeaver so that with help of SQL we could export the **diamonds.csv** to start working with: 


`SELECT
dp.index_id as "Index_ID",
dc.clarity as "Clarity",
dco.color as "Color",
dcu.cut as "Cut",
dt.carat as "Carat",
dd.x as "x",
dd.y as "y",
dd.z as "z",
dd."table" as "Table",
dd."depth" as "Depth",
dt.price as "Price",
dci.city as "City"
FROM diamonds_properties dp
INNER JOIN diamonds_clarity dc ON dc.clarity_id =dp.clarity_id
INNER JOIN diamonds_color dco ON dco.color_id =dp.color_id
INNER JOIN diamonds_cut dcu ON dcu.cut_id =dp.cut_id 
INNER JOIN diamonds_dimensions dd ON dd.index_id = dp.index_id
INNER JOIN diamonds_transactional dt ON dt.index_id = dp.index_id 
INNER JOIN diamonds_city dci ON dci.city_id = dt.city_id `,

<p align="center"><img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fgithub.com%2Fdbeaver%2Fdbeaver&psig=AOvVaw3JZ5iGnMbWy_ZYahr7RnL8&ust=1646170561347000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPjS3q6to_YCFQAAAAAdAAAAABAD"></p>



From this **diamonds.csv**, pandas was applied to group and filter information in order to built the visualizations that as we were exploring the dataset, we found more relevant to offer. 


---



---

## __Step 2: BI report__



## __Step 3: Insights__

---


## **Challenge 2: BI Report/Dashboard**

BI Reports and Dashboards are powerful tools for communicating important information __at-a-glance__. The goal of this challenge is to build a BI Report/Dashboard using our diamonds database that will help the final user (i.e.: yourself) to perform better during _Module 3 project (Kaggle Competition)_. 

> __Tip:__ you should first consider which data and which indicators should be put on the BI Report/Dashboard. Then, decompose the key indicators from multiple dimensions. 

<p align="center"><img src="https://media.giphy.com/media/l46Cy1rHbQ92uuLXa/giphy.gif"></p>


A BI Report/Dashboard is not exactly a sequential set of descriptive charts like those you have may built in challenge 1 during the analysis. Instead, a BI Report/Dashboard should be __a single interactive interface built around a specific objetive and which components are logically arranged in order to provide data relevant insights effectively__. Therefore, bear in mind the main objective of the competition: _understand the relationship between diamonds attributes (features) or group of attributes, and its price_.



---



## **References:**

- [SQLite](https://www.sqlite.org/index.html)

- [SQLAlchemy](https://docs.sqlalchemy.org/en/14/core/engines.html)

- [Visual Analysis Best Practices](https://github.com/ih-datapt-mad/ih_datamadpt1121_project_m2/blob/main/images/visual-analysis-guidebook.pdf)

- [Financial Times Visual Vocabulary](https://github.com/ft-interactive/chart-doctor/tree/master/visual-vocabulary)

- [Matplotlib](https://matplotlib.org/stable/api/index)

- [Pandas Visualization](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.plot.html)

- [Seaborn](https://seaborn.pydata.org/api.html)

- [Plotly](https://plotly.com/graphing-libraries/)

- [Cufflinks](https://coderzcolumn.com/tutorials/data-science/cufflinks-how-to-create-plotly-charts-from-pandas-dataframe-with-one-line-of-code)

- [Tableau](https://github.com/ih-datapt-mad/dataptmad1121_lessons/blob/main/module-2/visualization_tableau.md)

- [Power BI](https://github.com/potacho/power_bi_workshop)