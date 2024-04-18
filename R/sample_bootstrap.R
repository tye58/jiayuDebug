#' Generate bootstrapped random samples from a dataset
#'
#' This function generates bootstrapped random samples from a dataset
#' with a specified number of folds.
#'
#' @param data The dataset from which to sample.
#' @param folds The number of folds for bootstrapping.
#' @return A list of bootstrapped random samples.
#'
#' @examples
#' # Generate bootstrapped random samples with 5 folds
#' bootstrap_sampling(letters, folds = 5)
#'
#' @export
bootstrap_sampling <- function() {
  experiment<-readxl::read_excel("trial.xlsx")
  #systematic sample my data, 10 replicates of size 5
  samples <- NULL
  for(i in 1:10){
    samples <-rbind(samples,experiment[systematic_sampling(1:32, interval = 6),] |> dplyr::mutate(id=rep(i,5)))}

  return(samples)
}
