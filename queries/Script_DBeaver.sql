
SELECT
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
INNER JOIN diamonds_city dci ON dci.city_id = dt.city_id 