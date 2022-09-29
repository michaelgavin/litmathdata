#' Import Data
#' 
#' Imports Datasets.
#' 
#' @param dataset A character vector from a controlled list of datasets.
#'           
#' @section What it does:
#' As the name suggests, this function downloads data from the package.
#' For most datasets, you can simply use the base `data()` function,
#' but some datasets are stored across multiple files, and this function
#' automatically compiles them.
#' 
#' 
#' Valid dataset names include:
#' "behn_A27301",
#' "behn_peer_corpus",
#' "conceptual_change",
#' "doc_metadata",
#' "eebo_network",
#' "footprints",
#' "geo",
#' "keyword_doc",
#' "kwic",
#' "locke_A48901",
#' "locke_peer_corpus",
#' "place_doc",
#' "place_year",
#' "term_doc"
#' 
#' 
#' @return The identified dataset will be loaded into the global R
#'         environment.
#' 
#' @examples
#' import_data("kwic")
#' 
#' 
#' @export
import_data = function(dataset) {
  if (dataset %in% c("behn_A27301",
                     "behn_peer_corpus",
                     "conceptual_change",
                     "doc_metadata",
                     "eebo_network",
                     "footprints",
                     "geo",
                     "keyword_doc",
                     "kwic",
                     "locke_A48901",
                     "locke_peer_corpus",
                     "place_doc",
                     "place_year",
                     "term_doc") == F ) {
    message("Enter a valid dataset name.")
    stop()
  }
  if (dataset %in% c("behn_A27301",
                     "behn_peer_corpus",
                     "conceptual_change",
                     "doc_metadata",
                     "eebo_network",
                     "footprints",
                     "geo",
                     "kwic",
                     "locke_A48901",
                     "locke_peer_corpus",
                     "place_doc",
                     "place_year",
                     "term_doc")) {
    return(data(dataset))
  }
  if (dataset == "keyword_doc") {
    load(paste(system.file('extdata', package = 'litmathdata'), "/", 
               "kd1.rda", sep = ""))
    keyword_doc = kd
    
    load(paste(system.file('extdata', package = 'litmathdata'), "/", 
               "kd2.rda", sep = ""))
    keyword_doc = cbind(keyword_doc, kd)
    
    load(paste(system.file('extdata', package = 'litmathdata'), "/", 
               "kd3.rda", sep = ""))
    keyword_doc = cbind(keyword_doc, kd)
    
    load(paste(system.file('extdata', package = 'litmathdata'), "/", 
               "kd4.rda", sep = ""))
    keyword_doc = cbind(keyword_doc, kd)
    
    load(paste(system.file('extdata', package = 'litmathdata'), "/", 
               "kd5.rda", sep = ""))
    keyword_doc = cbind(keyword_doc, kd)
    
    return(keyword_doc)
  }
}
