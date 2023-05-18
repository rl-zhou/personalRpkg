#' sample size calculation: modification needed

#' @param p0 The proportion in H0
#' @param p1 The proportion in H1
#' @param right_alpha The upper tail area
#' @param power Power of the test
#'
#' @return The sample size needed for a clinical trial that compares two proportions
#'
#' @export

sample_size <- function(p0, p1, right_alpha = 0.025, power = 0.9){
  z_alpha <- qnorm(1 - right_alpha)
  z_power <- qnorm(power)

  return ((z_alpha + z_power)^2 / (p0-p1)^2 * (p1*(1-p1) + p0*(1-p0)))
}
