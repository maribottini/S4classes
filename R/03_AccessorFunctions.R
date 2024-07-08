#' @import methods
#' @import GenomicRanges
NULL

# R/03_AcessorFunctions.R

#' Get symbol of a gene
#'
#' @param gene An object of class Gene.
#' @return The symbol of the gene.
#' @examples
#' # example code for getting the symbol of a gene:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' GetSymbol(gene)
#' @export
GetSymbol <- function(gene) {
    gene@sym
}

#' Set symbol of a gene
#'
#' @param gene An object of class Gene.
#' @param value The new symbol of the gene.
#' @return The updated gene object.
#' @examples
#' # example code for setting a new symbol to a gene:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' gene <- SetSymbol(gene, "BRCA1_new")
#' GetSymbol(gene)
#' @export
SetSymbol <- function(gene, value) {
    gene@sym <- value
    gene
}

#' Get End of a gene sequence
#'
#' @param gene An object of class Gene.
#' @return The end sequence of the gene.
#' @examples
#' # example code for getting the end of a gene sequence:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' getEnd(gene)
#' @export
getEnd <- function(gene) {
    gene@end
}

#' Get Start of a gene sequence
#'
#' @param gene An object of class Gene.
#' @return The Start sequence of the gene.
#' @examples
#' # example code for getting the start of a gene sequence:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' getStart(gene)
#' @export
getStart <- function(gene) {
    gene@start
}

#' Set End of a gene sequence
#'
#' @param gene An object of class Gene.
#' @param value The new end of the gene sequence.
#' @return The updated gene object.
#' @examples
#' # example code for setting a new end to a gene sequence:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' gene <- setEnd(gene, 43130000)
#' getEnd(gene)
#' @export
setEnd <- function(gene, value) {
    gene@end <- value
    gene
}

#' Set Start of a gene sequence
#'
#' @param gene An object of class Gene.
#' @param value The new start of the gene sequence.
#' @return The updated gene object.
#' @examples
#' # example code for setting a new start to a gene sequence:
#' gene <- new("ProteinCodingGene", name = "Breast Cancer Gene 1",
#'     ID = "BC12345", sym = "BRCA1", chr = "17", start = 43044295,
#'     end = 43125482, desc = "Gene involved in DNA repair",
#'     product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
#' gene <- setStart(gene, 43040000)
#' getStart(gene)
#' @export
setStart <- function(gene, value) {
    gene@start <- value
    gene
}

