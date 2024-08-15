package model;

public class Customer {
    private String customerName;
    private double totalLifetimeValue;
    private double averageOrderValue;
    private String customerSegmentCategory;

    // Getters and Setters
    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public double getTotalLifetimeValue() {
        return totalLifetimeValue;
    }

    public void setTotalLifetimeValue(double totalLifetimeValue) {
        this.totalLifetimeValue = totalLifetimeValue;
    }

    public double getAverageOrderValue() {
        return averageOrderValue;
    }

    public void setAverageOrderValue(double averageOrderValue) {
        this.averageOrderValue = averageOrderValue;
    }

    public String getCustomerSegmentCategory() {
        return customerSegmentCategory;
    }

    public void setCustomerSegmentCategory(String customerSegmentCategory) {
        this.customerSegmentCategory = customerSegmentCategory;
    }
}
