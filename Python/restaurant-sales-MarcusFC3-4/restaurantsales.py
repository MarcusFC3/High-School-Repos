#Marcus Jones Jr.
# Chapter 6
# Lab1
DAYS_OF_THE_WEEK = ("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
daily_sales_amount = []

print("Daily Sales Tracker\n")
for day in DAYS_OF_THE_WEEK:
    sales_amount = float(input(f"Enter the sales amount for {day:<9}: "))
    daily_sales_amount.append(sales_amount)
total_sales = 0
for value in daily_sales_amount:
    total_sales+=value

print(f"\nTotal weekly sales\t: $ {total_sales:.2f}")
print(f"Average weekly sales : $ {total_sales/len(daily_sales_amount):.2f}\n")
print(f"The highest sales were ${max(daily_sales_amount):.2f}")
print(f"The lowest sales were ${min(daily_sales_amount):.2f}")