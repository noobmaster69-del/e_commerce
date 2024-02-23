class EPricingCalculator {
  /// -- Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate Shipping Cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Look for tax rate API
    // Return Approx tax rate
    return 10.0;
  }

  static double getShippingCost(String location) {
    // Look for shipping cost API
    // calculate the shipping cost based on various factors
    return 5.0;
  }

  // SUM ALL CART VALUES
}
