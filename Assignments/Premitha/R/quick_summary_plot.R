
#' Quick Summary and Visualization
#'
#' Generates a summary and a histogram for a numeric variable in a data frame.
#' @param data A data frame containing the variable.
#' @param var The name of the numeric variable (unquoted).
#' @return Prints summary statistics and displays a histogram.
#' @examples
#' quick_summary_plot(mtcars, mpg)
#' @export
quick_summary_plot <- function(data, var) {
  variable <- dplyr::pull(data, {{ var }})
  
  cat("Summary statistics for", deparse(substitute(var)), ":
")
  print(summary(variable))
  
  print(
    ggplot2::ggplot(data, ggplot2::aes(x = {{ var }})) +
      ggplot2::geom_histogram(binwidth = diff(range(variable))/30, 
                              fill = "skyblue", color = "white") +
      ggplot2::theme_minimal() +
      ggplot2::labs(title = paste("Histogram of", deparse(substitute(var))))
  )
}

