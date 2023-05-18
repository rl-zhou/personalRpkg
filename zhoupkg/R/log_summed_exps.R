#' log of sum of exponentials function

#' @param vec A numeric vector
#'
#' @return The sum of exponentials of the input vector
#'
#' @export
#'
#' @import tidyverse ggplot2
#'
#' @examples
#' tmp <- seq(1:10) # create a vector
#' log_summed_exps(tmp) # call the function using this vector
#'
log_summed_exps <- function(vec){

  # if the input is a scalar
  if (length(vec) == 1){
    return(vec)
  }

  else {
    # sort the input vector
    vec_max <- max(vec)
    vec_new <- sort(vec)[2:length(vec)]

    return (vec_max + log(1 + sum(exp(vec_new - vec_max))))
  }

}
