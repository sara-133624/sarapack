# Sample data for testing
test_data1 <- c(10, 12, 15, 100, 13)  # Contains an outlier (100)
test_data2 <- c(5, 6, 7, 8, 9)        # No outliers
test_data3 <- c(20, 25, NA, 30, 35)   # Contains a missing value (NA)
test_data4 <- c(50, 50, 50, 50)       # No variance (all values are identical)

# Test the function with the sample data
result1 <- detect_outliers(test_data1, threshold = 2)  # Testing with an outlier
result2 <- detect_outliers(test_data2, threshold = 2)  # Testing with no outliers
result3 <- detect_outliers(test_data3, threshold = 2)  # Testing with missing values
result4 <- detect_outliers(test_data4, threshold = 2)  # Testing with no variance

# Print the results
cat("Test 1 (Contains outlier):\n")
print(result1)

cat("\nTest 2 (No outliers):\n")
print(result2)

cat("\nTest 3 (Contains NA):\n")
print(result3)

cat("\nTest 4 (No variance):\n")
print(result4)

