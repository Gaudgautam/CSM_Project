package model;

public class CustomerData {
    private String customerId;
    private String customerName;
    private double lifetimeValue;
    private double averageOrderValue;

    public CustomerData(String customerId, String customerName, double lifetimeValue, double averageOrderValue) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.lifetimeValue = lifetimeValue;
        this.averageOrderValue = averageOrderValue;
    }

    // Getters and setters
    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public double getLifetimeValue() {
        return lifetimeValue;
    }

    public void setLifetimeValue(double lifetimeValue) {
        this.lifetimeValue = lifetimeValue;
    }

    public double getAverageOrderValue() {
        return averageOrderValue;
    }

    public void setAverageOrderValue(double averageOrderValue) {
        this.averageOrderValue = averageOrderValue;
    }
}