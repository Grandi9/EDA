## Question 1:

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

### Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 

Using the average order value (AOV), the calculated value was  $3145.13. This is incorrect because the formula failed to account for orders that can contain multiple items.

Further, the dataset has outliers that I have identified and removed (Shop 42, 78). 

Why did I remove shop 78 - Store 78 is selling sneakers at $25,725. I guess they sell diamond-studded sneakers, so let's drop this store as it is an outlier.

Why did I remove Shop 42  - One customer made several trasnactions 


### What metric would you report for this dataset?

price_per_sneaker = order_amount / total_items

### What is its value?

The value is $150.4
